function y = dy_upsample(x)

y = imresize(x, 2, 'nearest');

end