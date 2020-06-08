disp(matlabroot)
% Run all unit tests in my repository.
results = runtests('IncludeSubfolders', true);

% Assert no tests failed.
assert(all(~[results.Failed]));
