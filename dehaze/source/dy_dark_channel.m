function darkc = dy_dark_channel(image, wsize)

if size(image, 3)~=3
    error('dark channel only support rgb images');
end

if ~rem(wsize, 2)
    error('window size must be odd');
end

hsize = (wsize - 1) / 2;

padim = padarray(image, [hsize, hsize], 'symmetric');
darkc = - vl_nnpool( - padim, [wsize, wsize]);
darkc = min(darkc, [], 3);

end