# GAN-matlab
MATLAB Generative Adversarial Nets.

This source code provides the GAN model [1] to generate vitual MNIST images. I tried to implement GAN without MATLAB inner functions in order to understand GAN algorithm itself. 

* Only for non commercial uses
* CAPTION: Not recommend to use batch normalization in shallow FC networks.
* During training you can plot the generated images, but Image MATLAB Toolbox may be necessary. (See option 'opts.checker'.)
* Supports GPU boosting (required MATLAB Computing Toolbox)
* Only two options: standard GAN (gan), least square GAN (lsgan)
  (You can easily add other GAN-styled loss functions, but you have to specify the gradients in person.)
* As for basic framework of vanila DNN, [2] is partially utilized.

## Run the demo
```bash
gan.m
```

Other detailed options will be seen in the file gan.m.

## Reference
* [1] I. Goodfellow, et al., "Generative adversarial nets," NIPS '14.
(https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf)
* [2] http://web.cse.ohio-state.edu/~wang.77/pnl/software.html
