# ImageRecognizer-iOS
Image classification using neural networks (inception-bn) and **MxNet** (neural net library), implemented for iOS.
#
*nn/NNManager.mm* - class working with MxNet API

*nndata/params* - serialized data of the network (weights, convolutional kernels)

*nndata/symbol.json* - structure of the network 

*nndata/syncet.txt* - word dictionary for network, pair output value - meaning word 
#
<image src=https://github.com/dneprDroid/ImageRecognizer-iOS/blob/master/images/screen1.gif?raw=true height=500 />
#Android

Android version - https://github.com/dneprDroid/ImageRecognizer
#Links
  * https://github.com/dmlc/mxnet - MxNet library 
  * https://culurciello.github.io/tech/2016/06/04/nets.html - architectures of neural nets, including inception-bn arch.
  * https://github.com/Trangle/mxnet-inception-v4 - inceprion network trainer