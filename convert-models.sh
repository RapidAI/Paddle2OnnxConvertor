#!/bin/bash

function trainToOnnx() {
  python3 tools/export_custom.py --height ${1} \
  --width ${2} \
  -c ${3} \
  -o Global.pretrained_model=./inference/${4}_train/best_accuracy Global.load_static_weights=False Global.save_inference_dir=./inference/${4}_infer/

  paddle2onnx --model_dir inference/${4}_infer  \
   --model_filename  inference.pdmodel \
   --params_filename inference.pdiparams \
   --save_file inference/${4}_infer.onnx \
   --opset_version 11 \
   --enable_onnx_checker True
}

# ch_ppocr_mobile_v2.0_cls
trainToOnnx 48 192 configs/cls/cls_mv3.yml ch_ppocr_mobile_v2.0_cls

# ch_ppocr_mobile_v2.0_det
trainToOnnx -1 -1 configs/det/ch_ppocr_v2.0/ch_det_mv3_db_v2.0.yml ch_ppocr_mobile_v2.0_det