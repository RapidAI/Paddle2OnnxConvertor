# PaddleModelsConvertor

[![Issue](https://img.shields.io/github/issues/RapidOCR/PaddleModelsConvertor.svg)](https://github.com/RapidOCR/PaddleModelsConvertor/issues)
[![Star](https://img.shields.io/github/stars/RapidOCR/PaddleModelsConvertor.svg)](https://github.com/RapidOCR/PaddleModelsConvertor)

## [英文](./README.en.md) | [中文](./README.md)

### ONNX模型下载

[releases](https://github.com/RapidOCR/PaddleModelsConvertor/releases)

20210328: release/2.0

20210702: release/2.0



### 介绍

paddle训练模型自动转换工具。

通过Github Action完成自动下载paddle训练模型，转换为onnx，最后发布为Release的流程。

以下信息仅作为仓库的文件的说明，转换由Github Action自动完成，无需手工转换。

### Paddle训练模型下载地址

[地址](./paddle-model-list.txt)

### 环境

1. Ubuntu 20.04 x64
2. python3/pip3 >= 3.7
3. [python依赖模块](./requirements.txt)
4. [paddle2onnx-wild](https://github.com/RapidOCR/paddle2onnx-wild)
5. [PaddleOCR branch:release/2.0](https://github.com/PaddlePaddle/PaddleOCR)
6. [模型下载脚本](./download-models.sh)
7. [模型转换脚本](./convert-models.sh)
8. [模型转换附加工具1](./export_custom.py)
9. [模型转换附加工具2](./program.py)