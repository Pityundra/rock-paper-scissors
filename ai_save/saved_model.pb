Ý
Ý
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38ª


Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
z
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/v
z
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
(*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v* 
_output_shapes
:
(*
dtype0

Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_23/bias/v
{
)Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_23/kernel/v

+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_22/bias/v
{
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_22/kernel/v

+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_21/bias/v
{
)Adam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_21/kernel/v

+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/v

+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
: *
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
z
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/m
z
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
(*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m* 
_output_shapes
:
(*
dtype0

Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_23/bias/m
{
)Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_23/kernel/m

+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_22/bias/m
{
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_22/kernel/m

+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_21/bias/m
{
)Adam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_21/kernel/m

+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/m

+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
{
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_14/kernel
t
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes
:	*
dtype0
s
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
l
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes	
:*
dtype0
|
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_13/kernel
u
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel* 
_output_shapes
:
*
dtype0
s
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
l
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes	
:*
dtype0
|
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
(* 
shared_namedense_12/kernel
u
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel* 
_output_shapes
:
(*
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
: *
dtype0

conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
: *
dtype0

conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
: *
dtype0

conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
: *
dtype0

conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
»o
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ön
valueìnBén Bân
 
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
trainable_variables
	variables
regularization_losses
	keras_api
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
	optimizer

signatures*
¦
trainable_variables
	variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*

trainable_variables
	variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
¦
$trainable_variables
%	variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*

,trainable_variables
-	variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
¦
2trainable_variables
3	variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*

:trainable_variables
;	variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
¦
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias*

Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses* 

Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
¦
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

Zkernel
[bias*
¦
\trainable_variables
]	variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias*
¦
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias*
j
0
1
*2
+3
84
95
F6
G7
Z8
[9
b10
c11
j12
k13*
j
0
1
*2
+3
84
95
F6
G7
Z8
[9
b10
c11
j12
k13*
* 
°
lnon_trainable_variables
mlayer_metrics
trainable_variables
	variables
nlayer_regularization_losses
ometrics
regularization_losses

players
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
qtrace_0
rtrace_1
strace_2
ttrace_3* 

utrace_0* 
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
Ü
ziter

{beta_1

|beta_2
	}decay
~learning_ratemßmà*má+mâ8mã9mäFmåGmæZmç[mèbmécmêjmëkmìvívî*vï+vð8vñ9vòFvóGvôZvõ[vöbv÷cvøjvùkvú*

serving_default* 

0
1*

0
1*
* 

non_trainable_variables
layer_metrics
trainable_variables
	variables
 layer_regularization_losses
metrics
regularization_losses
layers
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layer_metrics
trainable_variables
	variables
 layer_regularization_losses
metrics
 regularization_losses
layers
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

*0
+1*

*0
+1*
* 

non_trainable_variables
layer_metrics
$trainable_variables
%	variables
 layer_regularization_losses
metrics
&regularization_losses
layers
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layer_metrics
,trainable_variables
-	variables
 layer_regularization_losses
metrics
.regularization_losses
layers
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

80
91*

80
91*
* 

non_trainable_variables
layer_metrics
2trainable_variables
3	variables
 layer_regularization_losses
metrics
4regularization_losses
 layers
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

¡trace_0* 

¢trace_0* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

£non_trainable_variables
¤layer_metrics
:trainable_variables
;	variables
 ¥layer_regularization_losses
¦metrics
<regularization_losses
§layers
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

¨trace_0* 

©trace_0* 

F0
G1*

F0
G1*
* 

ªnon_trainable_variables
«layer_metrics
@trainable_variables
A	variables
 ¬layer_regularization_losses
­metrics
Bregularization_losses
®layers
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

¯trace_0* 

°trace_0* 
`Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

±non_trainable_variables
²layer_metrics
Htrainable_variables
I	variables
 ³layer_regularization_losses
´metrics
Jregularization_losses
µlayers
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

¶trace_0* 

·trace_0* 
* 
* 
* 

¸non_trainable_variables
¹layer_metrics
Ntrainable_variables
O	variables
 ºlayer_regularization_losses
»metrics
Pregularization_losses
¼layers
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

½trace_0* 

¾trace_0* 

Z0
[1*

Z0
[1*
* 

¿non_trainable_variables
Àlayer_metrics
Ttrainable_variables
U	variables
 Álayer_regularization_losses
Âmetrics
Vregularization_losses
Ãlayers
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

Ätrace_0* 

Åtrace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

b0
c1*

b0
c1*
* 

Ænon_trainable_variables
Çlayer_metrics
\trainable_variables
]	variables
 Èlayer_regularization_losses
Émetrics
^regularization_losses
Êlayers
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

Ëtrace_0* 

Ìtrace_0* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

j0
k1*

j0
k1*
* 

Ínon_trainable_variables
Îlayer_metrics
dtrainable_variables
e	variables
 Ïlayer_regularization_losses
Ðmetrics
fregularization_losses
Ñlayers
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

Òtrace_0* 

Ótrace_0* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ô0
Õ1*
Z
0
1
2
3
4
5
6
7
	8

9
10
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ö	variables
×	keras_api

Øtotal

Ùcount*
M
Ú	variables
Û	keras_api

Ütotal

Ýcount
Þ
_fn_kwargs*

Ø0
Ù1*

Ö	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ü0
Ý1*

Ú	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_23/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_23/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_conv2d_20_inputPlaceholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿÈ¬
¼
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_20_inputconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_3583
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
©
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp)Adam/conv2d_21/bias/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp)Adam/conv2d_22/bias/m/Read/ReadVariableOp+Adam/conv2d_23/kernel/m/Read/ReadVariableOp)Adam/conv2d_23/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp)Adam/conv2d_21/bias/v/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp)Adam/conv2d_22/bias/v/Read/ReadVariableOp+Adam/conv2d_23/kernel/v/Read/ReadVariableOp)Adam/conv2d_23/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_4094
¨

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/mAdam/conv2d_22/kernel/mAdam/conv2d_22/bias/mAdam/conv2d_23/kernel/mAdam/conv2d_23/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/vAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/vAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_4257é³
¢

ô
B__inference_dense_14_layer_call_and_return_conditional_losses_3918

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å

'__inference_dense_12_layer_call_fn_3867

inputs
unknown:
(
	unknown_0:	
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_3163p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
¢

ô
B__inference_dense_14_layer_call_and_return_conditional_losses_3197

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3101

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿc : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc 
 
_user_specified_nameinputs
Å

'__inference_dense_13_layer_call_fn_3887

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_3180p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_17_layer_call_fn_3041

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3827

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ0I : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I 
 
_user_specified_nameinputs
Å
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_3858

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
 :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
 
_user_specified_nameinputs
4
¿
F__inference_sequential_8_layer_call_and_return_conditional_losses_3390

inputs(
conv2d_20_3349: 
conv2d_20_3351: (
conv2d_21_3355:  
conv2d_21_3357: (
conv2d_22_3361:  
conv2d_22_3363: (
conv2d_23_3367:  
conv2d_23_3369: !
dense_12_3374:
(
dense_12_3376:	!
dense_13_3379:

dense_13_3381:	 
dense_14_3384:	
dense_14_3386:
identity¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallø
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_20_3349conv2d_20_3351*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3083ó
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_21_3355conv2d_21_3357*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3101ò
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_22_3361conv2d_22_3363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3119ò
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_23_3367conv2d_23_3369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3137ò
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059Ü
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_3150
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_3374dense_12_3376*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_3163
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3379dense_13_3381*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_3180
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_3384dense_14_3386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_3197x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð

(__inference_conv2d_20_layer_call_fn_3776

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3083y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÈ¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­H

F__inference_sequential_8_layer_call_and_return_conditional_losses_3708

inputsB
(conv2d_20_conv2d_readvariableop_resource: 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource:  7
)conv2d_21_biasadd_readvariableop_resource: B
(conv2d_22_conv2d_readvariableop_resource:  7
)conv2d_22_biasadd_readvariableop_resource: B
(conv2d_23_conv2d_readvariableop_resource:  7
)conv2d_23_biasadd_readvariableop_resource: ;
'dense_12_matmul_readvariableop_resource:
(7
(dense_12_biasadd_readvariableop_resource:	;
'dense_13_matmul_readvariableop_resource:
7
(dense_13_biasadd_readvariableop_resource:	:
'dense_14_matmul_readvariableop_resource:	6
(dense_14_biasadd_readvariableop_resource:
identity¢ conv2d_20/BiasAdd/ReadVariableOp¢conv2d_20/Conv2D/ReadVariableOp¢ conv2d_21/BiasAdd/ReadVariableOp¢conv2d_21/Conv2D/ReadVariableOp¢ conv2d_22/BiasAdd/ReadVariableOp¢conv2d_22/Conv2D/ReadVariableOp¢ conv2d_23/BiasAdd/ReadVariableOp¢conv2d_23/Conv2D/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0°
conv2d_20/Conv2DConv2Dinputs'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª n
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª ¯
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc *
ksize
*
paddingVALID*
strides

conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ê
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa m
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa ®
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I *
ksize
*
paddingVALID*
strides

conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0É
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *
paddingVALID*
strides

 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G ®
max_pooling2d_18/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# *
ksize
*
paddingVALID*
strides

conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0É
conv2d_23/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *
paddingVALID*
strides

 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! l
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! ®
max_pooling2d_19/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 *
ksize
*
paddingVALID*
strides
`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_4/ReshapeReshape!max_pooling2d_19/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
(*
dtype0
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_14/SoftmaxSoftmaxdense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
NoOpNoOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
g
ø
__inference__traced_save_4094
file_prefix/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_20_kernel_m_read_readvariableop4
0savev2_adam_conv2d_20_bias_m_read_readvariableop6
2savev2_adam_conv2d_21_kernel_m_read_readvariableop4
0savev2_adam_conv2d_21_bias_m_read_readvariableop6
2savev2_adam_conv2d_22_kernel_m_read_readvariableop4
0savev2_adam_conv2d_22_bias_m_read_readvariableop6
2savev2_adam_conv2d_23_kernel_m_read_readvariableop4
0savev2_adam_conv2d_23_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop6
2savev2_adam_conv2d_21_kernel_v_read_readvariableop4
0savev2_adam_conv2d_21_bias_v_read_readvariableop6
2savev2_adam_conv2d_22_kernel_v_read_readvariableop4
0savev2_adam_conv2d_22_bias_v_read_readvariableop6
2savev2_adam_conv2d_23_kernel_v_read_readvariableop4
0savev2_adam_conv2d_23_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*
valueüBù4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÕ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¥
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop0savev2_adam_conv2d_21_bias_m_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop0savev2_adam_conv2d_22_bias_m_read_readvariableop2savev2_adam_conv2d_23_kernel_m_read_readvariableop0savev2_adam_conv2d_23_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop0savev2_adam_conv2d_21_bias_v_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop0savev2_adam_conv2d_22_bias_v_read_readvariableop2savev2_adam_conv2d_23_kernel_v_read_readvariableop0savev2_adam_conv2d_23_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ð
_input_shapesÞ
Û: : : :  : :  : :  : :
(::
::	:: : : : : : : : : : : :  : :  : :  : :
(::
::	:: : :  : :  : :  : :
(::
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :&	"
 
_output_shapes
:
(:!


_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :& "
 
_output_shapes
:
(:!!

_output_shapes	
::&""
 
_output_shapes
:
:!#

_output_shapes	
::%$!

_output_shapes
:	: %

_output_shapes
::,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
:  : )

_output_shapes
: :,*(
&
_output_shapes
:  : +

_output_shapes
: :,,(
&
_output_shapes
:  : -

_output_shapes
: :&."
 
_output_shapes
:
(:!/

_output_shapes	
::&0"
 
_output_shapes
:
:!1

_output_shapes	
::%2!

_output_shapes
:	: 3

_output_shapes
::4

_output_shapes
: 
æË
Ý
 __inference__traced_restore_4257
file_prefix;
!assignvariableop_conv2d_20_kernel: /
!assignvariableop_1_conv2d_20_bias: =
#assignvariableop_2_conv2d_21_kernel:  /
!assignvariableop_3_conv2d_21_bias: =
#assignvariableop_4_conv2d_22_kernel:  /
!assignvariableop_5_conv2d_22_bias: =
#assignvariableop_6_conv2d_23_kernel:  /
!assignvariableop_7_conv2d_23_bias: 6
"assignvariableop_8_dense_12_kernel:
(/
 assignvariableop_9_dense_12_bias:	7
#assignvariableop_10_dense_13_kernel:
0
!assignvariableop_11_dense_13_bias:	6
#assignvariableop_12_dense_14_kernel:	/
!assignvariableop_13_dense_14_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: E
+assignvariableop_23_adam_conv2d_20_kernel_m: 7
)assignvariableop_24_adam_conv2d_20_bias_m: E
+assignvariableop_25_adam_conv2d_21_kernel_m:  7
)assignvariableop_26_adam_conv2d_21_bias_m: E
+assignvariableop_27_adam_conv2d_22_kernel_m:  7
)assignvariableop_28_adam_conv2d_22_bias_m: E
+assignvariableop_29_adam_conv2d_23_kernel_m:  7
)assignvariableop_30_adam_conv2d_23_bias_m: >
*assignvariableop_31_adam_dense_12_kernel_m:
(7
(assignvariableop_32_adam_dense_12_bias_m:	>
*assignvariableop_33_adam_dense_13_kernel_m:
7
(assignvariableop_34_adam_dense_13_bias_m:	=
*assignvariableop_35_adam_dense_14_kernel_m:	6
(assignvariableop_36_adam_dense_14_bias_m:E
+assignvariableop_37_adam_conv2d_20_kernel_v: 7
)assignvariableop_38_adam_conv2d_20_bias_v: E
+assignvariableop_39_adam_conv2d_21_kernel_v:  7
)assignvariableop_40_adam_conv2d_21_bias_v: E
+assignvariableop_41_adam_conv2d_22_kernel_v:  7
)assignvariableop_42_adam_conv2d_22_bias_v: E
+assignvariableop_43_adam_conv2d_23_kernel_v:  7
)assignvariableop_44_adam_conv2d_23_bias_v: >
*assignvariableop_45_adam_dense_12_kernel_v:
(7
(assignvariableop_46_adam_dense_12_bias_v:	>
*assignvariableop_47_adam_dense_13_kernel_v:
7
(assignvariableop_48_adam_dense_13_bias_v:	=
*assignvariableop_49_adam_dense_14_kernel_v:	6
(assignvariableop_50_adam_dense_14_bias_v:
identity_52¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9à
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*
valueüBù4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHØ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesÓ
Ð::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_22_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_22_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_23_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_12_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_12_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_13_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_13_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_14_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_14_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_20_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_20_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_21_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_21_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_22_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_22_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_23_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_23_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_12_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_12_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_13_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_13_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_14_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_14_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_20_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_20_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_21_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_21_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_22_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_22_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_23_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_23_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_12_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_12_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_13_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_13_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_14_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_14_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ±	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¥

ö
B__inference_dense_13_layer_call_and_return_conditional_losses_3898

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3847

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ# : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# 
 
_user_specified_nameinputs
¥

ö
B__inference_dense_12_layer_call_and_return_conditional_losses_3878

inputs2
matmul_readvariableop_resource:
(.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
(*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs

ü
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3137

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ# : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# 
 
_user_specified_nameinputs
Å
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_3150

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
 :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
 
_user_specified_nameinputs

ü
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3807

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿc : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc 
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_16_layer_call_fn_3029

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ

+__inference_sequential_8_layer_call_fn_3616

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
(
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_8_layer_call_and_return_conditional_losses_3204o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs

ü
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3119

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ0I : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I 
 
_user_specified_nameinputs

ü
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3083

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÈ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs
¥

ö
B__inference_dense_12_layer_call_and_return_conditional_losses_3163

inputs2
matmul_readvariableop_resource:
(.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
(*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
¬4
È
F__inference_sequential_8_layer_call_and_return_conditional_losses_3542
conv2d_20_input(
conv2d_20_3501: 
conv2d_20_3503: (
conv2d_21_3507:  
conv2d_21_3509: (
conv2d_22_3513:  
conv2d_22_3515: (
conv2d_23_3519:  
conv2d_23_3521: !
dense_12_3526:
(
dense_12_3528:	!
dense_13_3531:

dense_13_3533:	 
dense_14_3536:	
dense_14_3538:
identity¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCallconv2d_20_inputconv2d_20_3501conv2d_20_3503*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3083ó
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_21_3507conv2d_21_3509*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3101ò
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_22_3513conv2d_22_3515*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3119ò
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_23_3519conv2d_23_3521*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3137ò
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059Ü
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_3150
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_3526dense_12_3528*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_3163
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3531dense_13_3533*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_3180
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_3536dense_14_3538*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_3197x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:b ^
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
)
_user_specified_nameconv2d_20_input
4
¿
F__inference_sequential_8_layer_call_and_return_conditional_losses_3204

inputs(
conv2d_20_3084: 
conv2d_20_3086: (
conv2d_21_3102:  
conv2d_21_3104: (
conv2d_22_3120:  
conv2d_22_3122: (
conv2d_23_3138:  
conv2d_23_3140: !
dense_12_3164:
(
dense_12_3166:	!
dense_13_3181:

dense_13_3183:	 
dense_14_3198:	
dense_14_3200:
identity¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallø
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_20_3084conv2d_20_3086*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3083ó
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_21_3102conv2d_21_3104*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3101ò
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_22_3120conv2d_22_3122*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3119ò
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_23_3138conv2d_23_3140*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3137ò
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059Ü
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_3150
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_3164dense_12_3166*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_3163
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3181dense_13_3183*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_3180
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_3198dense_14_3200*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_3197x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs


+__inference_sequential_8_layer_call_fn_3454
conv2d_20_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
(
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_8_layer_call_and_return_conditional_losses_3390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
)
_user_specified_nameconv2d_20_input
ÿ

+__inference_sequential_8_layer_call_fn_3649

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
(
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_8_layer_call_and_return_conditional_losses_3390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs
è

(__inference_conv2d_22_layer_call_fn_3816

inputs!
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3119w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ0I : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I 
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_18_layer_call_fn_3053

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬4
È
F__inference_sequential_8_layer_call_and_return_conditional_losses_3498
conv2d_20_input(
conv2d_20_3457: 
conv2d_20_3459: (
conv2d_21_3463:  
conv2d_21_3465: (
conv2d_22_3469:  
conv2d_22_3471: (
conv2d_23_3475:  
conv2d_23_3477: !
dense_12_3482:
(
dense_12_3484:	!
dense_13_3487:

dense_13_3489:	 
dense_14_3492:	
dense_14_3494:
identity¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCallconv2d_20_inputconv2d_20_3457conv2d_20_3459*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3083ó
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_21_3463conv2d_21_3465*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3101ò
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_22_3469conv2d_22_3471*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3119ò
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_23_3475conv2d_23_3477*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3137ò
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059Ü
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_3150
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_3482dense_12_3484*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_12_layer_call_and_return_conditional_losses_3163
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_3487dense_13_3489*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_13_layer_call_and_return_conditional_losses_3180
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_3492dense_14_3494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_3197x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:b ^
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
)
_user_specified_nameconv2d_20_input
¶
K
/__inference_max_pooling2d_19_layer_call_fn_3065

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
D
(__inference_flatten_4_layer_call_fn_3852

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_3150a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
 :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
 
_user_specified_nameinputs
­H

F__inference_sequential_8_layer_call_and_return_conditional_losses_3767

inputsB
(conv2d_20_conv2d_readvariableop_resource: 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource:  7
)conv2d_21_biasadd_readvariableop_resource: B
(conv2d_22_conv2d_readvariableop_resource:  7
)conv2d_22_biasadd_readvariableop_resource: B
(conv2d_23_conv2d_readvariableop_resource:  7
)conv2d_23_biasadd_readvariableop_resource: ;
'dense_12_matmul_readvariableop_resource:
(7
(dense_12_biasadd_readvariableop_resource:	;
'dense_13_matmul_readvariableop_resource:
7
(dense_13_biasadd_readvariableop_resource:	:
'dense_14_matmul_readvariableop_resource:	6
(dense_14_biasadd_readvariableop_resource:
identity¢ conv2d_20/BiasAdd/ReadVariableOp¢conv2d_20/Conv2D/ReadVariableOp¢ conv2d_21/BiasAdd/ReadVariableOp¢conv2d_21/Conv2D/ReadVariableOp¢ conv2d_22/BiasAdd/ReadVariableOp¢conv2d_22/Conv2D/ReadVariableOp¢ conv2d_23/BiasAdd/ReadVariableOp¢conv2d_23/Conv2D/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0°
conv2d_20/Conv2DConv2Dinputs'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª n
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª ¯
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc *
ksize
*
paddingVALID*
strides

conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ê
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa m
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa ®
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I *
ksize
*
paddingVALID*
strides

conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0É
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *
paddingVALID*
strides

 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G ®
max_pooling2d_18/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# *
ksize
*
paddingVALID*
strides

conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0É
conv2d_23/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *
paddingVALID*
strides

 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! l
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! ®
max_pooling2d_19/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 *
ksize
*
paddingVALID*
strides
`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_4/ReshapeReshape!max_pooling2d_19/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
(*
dtype0
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_14/SoftmaxSoftmaxdense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
NoOpNoOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs
è

(__inference_conv2d_23_layer_call_fn_3836

inputs!
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3137w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ# : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# 
 
_user_specified_nameinputs


+__inference_sequential_8_layer_call_fn_3235
conv2d_20_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
(
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_8_layer_call_and_return_conditional_losses_3204o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
)
_user_specified_nameconv2d_20_input
Y
ä
__inference__wrapped_model_3017
conv2d_20_inputO
5sequential_8_conv2d_20_conv2d_readvariableop_resource: D
6sequential_8_conv2d_20_biasadd_readvariableop_resource: O
5sequential_8_conv2d_21_conv2d_readvariableop_resource:  D
6sequential_8_conv2d_21_biasadd_readvariableop_resource: O
5sequential_8_conv2d_22_conv2d_readvariableop_resource:  D
6sequential_8_conv2d_22_biasadd_readvariableop_resource: O
5sequential_8_conv2d_23_conv2d_readvariableop_resource:  D
6sequential_8_conv2d_23_biasadd_readvariableop_resource: H
4sequential_8_dense_12_matmul_readvariableop_resource:
(D
5sequential_8_dense_12_biasadd_readvariableop_resource:	H
4sequential_8_dense_13_matmul_readvariableop_resource:
D
5sequential_8_dense_13_biasadd_readvariableop_resource:	G
4sequential_8_dense_14_matmul_readvariableop_resource:	C
5sequential_8_dense_14_biasadd_readvariableop_resource:
identity¢-sequential_8/conv2d_20/BiasAdd/ReadVariableOp¢,sequential_8/conv2d_20/Conv2D/ReadVariableOp¢-sequential_8/conv2d_21/BiasAdd/ReadVariableOp¢,sequential_8/conv2d_21/Conv2D/ReadVariableOp¢-sequential_8/conv2d_22/BiasAdd/ReadVariableOp¢,sequential_8/conv2d_22/Conv2D/ReadVariableOp¢-sequential_8/conv2d_23/BiasAdd/ReadVariableOp¢,sequential_8/conv2d_23/Conv2D/ReadVariableOp¢,sequential_8/dense_12/BiasAdd/ReadVariableOp¢+sequential_8/dense_12/MatMul/ReadVariableOp¢,sequential_8/dense_13/BiasAdd/ReadVariableOp¢+sequential_8/dense_13/MatMul/ReadVariableOp¢,sequential_8/dense_14/BiasAdd/ReadVariableOp¢+sequential_8/dense_14/MatMul/ReadVariableOpª
,sequential_8/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ó
sequential_8/conv2d_20/Conv2DConv2Dconv2d_20_input4sequential_8/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *
paddingVALID*
strides
 
-sequential_8/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ä
sequential_8/conv2d_20/BiasAddBiasAdd&sequential_8/conv2d_20/Conv2D:output:05sequential_8/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª 
sequential_8/conv2d_20/ReluRelu'sequential_8/conv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª É
%sequential_8/max_pooling2d_16/MaxPoolMaxPool)sequential_8/conv2d_20/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc *
ksize
*
paddingVALID*
strides
ª
,sequential_8/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ñ
sequential_8/conv2d_21/Conv2DConv2D.sequential_8/max_pooling2d_16/MaxPool:output:04sequential_8/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *
paddingVALID*
strides
 
-sequential_8/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ã
sequential_8/conv2d_21/BiasAddBiasAdd&sequential_8/conv2d_21/Conv2D:output:05sequential_8/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa 
sequential_8/conv2d_21/ReluRelu'sequential_8/conv2d_21/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa È
%sequential_8/max_pooling2d_17/MaxPoolMaxPool)sequential_8/conv2d_21/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0I *
ksize
*
paddingVALID*
strides
ª
,sequential_8/conv2d_22/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ð
sequential_8/conv2d_22/Conv2DConv2D.sequential_8/max_pooling2d_17/MaxPool:output:04sequential_8/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G *
paddingVALID*
strides
 
-sequential_8/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_8/conv2d_22/BiasAddBiasAdd&sequential_8/conv2d_22/Conv2D:output:05sequential_8/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G 
sequential_8/conv2d_22/ReluRelu'sequential_8/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.G È
%sequential_8/max_pooling2d_18/MaxPoolMaxPool)sequential_8/conv2d_22/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ# *
ksize
*
paddingVALID*
strides
ª
,sequential_8/conv2d_23/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ð
sequential_8/conv2d_23/Conv2DConv2D.sequential_8/max_pooling2d_18/MaxPool:output:04sequential_8/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! *
paddingVALID*
strides
 
-sequential_8/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_8/conv2d_23/BiasAddBiasAdd&sequential_8/conv2d_23/Conv2D:output:05sequential_8/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! 
sequential_8/conv2d_23/ReluRelu'sequential_8/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! È
%sequential_8/max_pooling2d_19/MaxPoolMaxPool)sequential_8/conv2d_23/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 *
ksize
*
paddingVALID*
strides
m
sequential_8/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ³
sequential_8/flatten_4/ReshapeReshape.sequential_8/max_pooling2d_19/MaxPool:output:0%sequential_8/flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+sequential_8/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_12_matmul_readvariableop_resource* 
_output_shapes
:
(*
dtype0·
sequential_8/dense_12/MatMulMatMul'sequential_8/flatten_4/Reshape:output:03sequential_8/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_8/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
sequential_8/dense_12/BiasAddBiasAdd&sequential_8/dense_12/MatMul:product:04sequential_8/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
sequential_8/dense_12/ReluRelu&sequential_8/dense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
+sequential_8/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¸
sequential_8/dense_13/MatMulMatMul(sequential_8/dense_12/Relu:activations:03sequential_8/dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_8/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
sequential_8/dense_13/BiasAddBiasAdd&sequential_8/dense_13/MatMul:product:04sequential_8/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
sequential_8/dense_13/ReluRelu&sequential_8/dense_13/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
+sequential_8/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_14_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0·
sequential_8/dense_14/MatMulMatMul(sequential_8/dense_13/Relu:activations:03sequential_8/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_8/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_8/dense_14/BiasAddBiasAdd&sequential_8/dense_14/MatMul:product:04sequential_8/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_8/dense_14/SoftmaxSoftmax&sequential_8/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_8/dense_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp.^sequential_8/conv2d_20/BiasAdd/ReadVariableOp-^sequential_8/conv2d_20/Conv2D/ReadVariableOp.^sequential_8/conv2d_21/BiasAdd/ReadVariableOp-^sequential_8/conv2d_21/Conv2D/ReadVariableOp.^sequential_8/conv2d_22/BiasAdd/ReadVariableOp-^sequential_8/conv2d_22/Conv2D/ReadVariableOp.^sequential_8/conv2d_23/BiasAdd/ReadVariableOp-^sequential_8/conv2d_23/Conv2D/ReadVariableOp-^sequential_8/dense_12/BiasAdd/ReadVariableOp,^sequential_8/dense_12/MatMul/ReadVariableOp-^sequential_8/dense_13/BiasAdd/ReadVariableOp,^sequential_8/dense_13/MatMul/ReadVariableOp-^sequential_8/dense_14/BiasAdd/ReadVariableOp,^sequential_8/dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 2^
-sequential_8/conv2d_20/BiasAdd/ReadVariableOp-sequential_8/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_20/Conv2D/ReadVariableOp,sequential_8/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_21/BiasAdd/ReadVariableOp-sequential_8/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_21/Conv2D/ReadVariableOp,sequential_8/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_22/BiasAdd/ReadVariableOp-sequential_8/conv2d_22/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_22/Conv2D/ReadVariableOp,sequential_8/conv2d_22/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_23/BiasAdd/ReadVariableOp-sequential_8/conv2d_23/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_23/Conv2D/ReadVariableOp,sequential_8/conv2d_23/Conv2D/ReadVariableOp2\
,sequential_8/dense_12/BiasAdd/ReadVariableOp,sequential_8/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_12/MatMul/ReadVariableOp+sequential_8/dense_12/MatMul/ReadVariableOp2\
,sequential_8/dense_13/BiasAdd/ReadVariableOp,sequential_8/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_13/MatMul/ReadVariableOp+sequential_8/dense_13/MatMul/ReadVariableOp2\
,sequential_8/dense_14/BiasAdd/ReadVariableOp,sequential_8/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_14/MatMul/ReadVariableOp+sequential_8/dense_14/MatMul/ReadVariableOp:b ^
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
)
_user_specified_nameconv2d_20_input

ü
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3787

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆª w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÈ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
 
_user_specified_nameinputs
ê

"__inference_signature_wrapper_3583
conv2d_20_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
(
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallconv2d_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_3017o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ¬: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¬
)
_user_specified_nameconv2d_20_input
Á

'__inference_dense_14_layer_call_fn_3907

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_3197o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

(__inference_conv2d_21_layer_call_fn_3796

inputs!
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3101x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿa `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿc : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc 
 
_user_specified_nameinputs
¥

ö
B__inference_dense_13_layer_call_and_return_conditional_losses_3180

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
U
conv2d_20_inputB
!serving_default_conv2d_20_input:0ÿÿÿÿÿÿÿÿÿÈ¬<
dense_140
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ï
º
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
trainable_variables
	variables
regularization_losses
	keras_api
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
	optimizer

signatures"
_tf_keras_sequential
»
trainable_variables
	variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
¥
trainable_variables
	variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
»
$trainable_variables
%	variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
¥
,trainable_variables
-	variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
»
2trainable_variables
3	variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
¥
:trainable_variables
;	variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
»
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
¥
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
»
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

Zkernel
[bias"
_tf_keras_layer
»
\trainable_variables
]	variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias"
_tf_keras_layer
»
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias"
_tf_keras_layer

0
1
*2
+3
84
95
F6
G7
Z8
[9
b10
c11
j12
k13"
trackable_list_wrapper

0
1
*2
+3
84
95
F6
G7
Z8
[9
b10
c11
j12
k13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
lnon_trainable_variables
mlayer_metrics
trainable_variables
	variables
nlayer_regularization_losses
ometrics
regularization_losses

players
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
â
qtrace_0
rtrace_1
strace_2
ttrace_32÷
+__inference_sequential_8_layer_call_fn_3235
+__inference_sequential_8_layer_call_fn_3616
+__inference_sequential_8_layer_call_fn_3649
+__inference_sequential_8_layer_call_fn_3454À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zqtrace_0zrtrace_1zstrace_2zttrace_3

utrace_02ì
__inference__wrapped_model_3017È
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬zutrace_0
Î
vtrace_0
wtrace_1
xtrace_2
ytrace_32ã
F__inference_sequential_8_layer_call_and_return_conditional_losses_3708
F__inference_sequential_8_layer_call_and_return_conditional_losses_3767
F__inference_sequential_8_layer_call_and_return_conditional_losses_3498
F__inference_sequential_8_layer_call_and_return_conditional_losses_3542À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
ù
ziter

{beta_1

|beta_2
	}decay
~learning_ratemßmà*má+mâ8mã9mäFmåGmæZmç[mèbmécmêjmëkmìvívî*vï+vð8vñ9vòFvóGvôZvõ[vöbv÷cvøjvùkvú"
tf_deprecated_optimizer
,
serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layer_metrics
trainable_variables
	variables
 layer_regularization_losses
metrics
regularization_losses
layers
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î
trace_02Ï
(__inference_conv2d_20_layer_call_fn_3776¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02ê
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3787¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
*:( 2conv2d_20/kernel
: 2conv2d_20/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layer_metrics
trainable_variables
	variables
 layer_regularization_losses
metrics
 regularization_losses
layers
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
³
trace_02
/__inference_max_pooling2d_16_layer_call_fn_3029à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿztrace_0
Î
trace_02¯
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿztrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layer_metrics
$trainable_variables
%	variables
 layer_regularization_losses
metrics
&regularization_losses
layers
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
î
trace_02Ï
(__inference_conv2d_21_layer_call_fn_3796¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02ê
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3807¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
*:(  2conv2d_21/kernel
: 2conv2d_21/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layer_metrics
,trainable_variables
-	variables
 layer_regularization_losses
metrics
.regularization_losses
layers
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
³
trace_02
/__inference_max_pooling2d_17_layer_call_fn_3041à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿztrace_0
Î
trace_02¯
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿztrace_0
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layer_metrics
2trainable_variables
3	variables
 layer_regularization_losses
metrics
4regularization_losses
 layers
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
î
¡trace_02Ï
(__inference_conv2d_22_layer_call_fn_3816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¡trace_0

¢trace_02ê
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3827¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¢trace_0
*:(  2conv2d_22/kernel
: 2conv2d_22/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
£non_trainable_variables
¤layer_metrics
:trainable_variables
;	variables
 ¥layer_regularization_losses
¦metrics
<regularization_losses
§layers
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
³
¨trace_02
/__inference_max_pooling2d_18_layer_call_fn_3053à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz¨trace_0
Î
©trace_02¯
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz©trace_0
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ªnon_trainable_variables
«layer_metrics
@trainable_variables
A	variables
 ¬layer_regularization_losses
­metrics
Bregularization_losses
®layers
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
î
¯trace_02Ï
(__inference_conv2d_23_layer_call_fn_3836¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¯trace_0

°trace_02ê
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3847¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z°trace_0
*:(  2conv2d_23/kernel
: 2conv2d_23/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layer_metrics
Htrainable_variables
I	variables
 ³layer_regularization_losses
´metrics
Jregularization_losses
µlayers
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
³
¶trace_02
/__inference_max_pooling2d_19_layer_call_fn_3065à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz¶trace_0
Î
·trace_02¯
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz·trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¸non_trainable_variables
¹layer_metrics
Ntrainable_variables
O	variables
 ºlayer_regularization_losses
»metrics
Pregularization_losses
¼layers
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
î
½trace_02Ï
(__inference_flatten_4_layer_call_fn_3852¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z½trace_0

¾trace_02ê
C__inference_flatten_4_layer_call_and_return_conditional_losses_3858¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¿non_trainable_variables
Àlayer_metrics
Ttrainable_variables
U	variables
 Álayer_regularization_losses
Âmetrics
Vregularization_losses
Ãlayers
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
í
Ätrace_02Î
'__inference_dense_12_layer_call_fn_3867¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÄtrace_0

Åtrace_02é
B__inference_dense_12_layer_call_and_return_conditional_losses_3878¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÅtrace_0
#:!
(2dense_12/kernel
:2dense_12/bias
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ænon_trainable_variables
Çlayer_metrics
\trainable_variables
]	variables
 Èlayer_regularization_losses
Émetrics
^regularization_losses
Êlayers
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
í
Ëtrace_02Î
'__inference_dense_13_layer_call_fn_3887¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zËtrace_0

Ìtrace_02é
B__inference_dense_13_layer_call_and_return_conditional_losses_3898¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÌtrace_0
#:!
2dense_13/kernel
:2dense_13/bias
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ínon_trainable_variables
Îlayer_metrics
dtrainable_variables
e	variables
 Ïlayer_regularization_losses
Ðmetrics
fregularization_losses
Ñlayers
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
í
Òtrace_02Î
'__inference_dense_14_layer_call_fn_3907¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÒtrace_0

Ótrace_02é
B__inference_dense_14_layer_call_and_return_conditional_losses_3918¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÓtrace_0
": 	2dense_14/kernel
:2dense_14/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Ô0
Õ1"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
B
+__inference_sequential_8_layer_call_fn_3235conv2d_20_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ýBú
+__inference_sequential_8_layer_call_fn_3616inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ýBú
+__inference_sequential_8_layer_call_fn_3649inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_sequential_8_layer_call_fn_3454conv2d_20_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bÿ
__inference__wrapped_model_3017conv2d_20_input"È
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬
B
F__inference_sequential_8_layer_call_and_return_conditional_losses_3708inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
F__inference_sequential_8_layer_call_and_return_conditional_losses_3767inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¡B
F__inference_sequential_8_layer_call_and_return_conditional_losses_3498conv2d_20_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¡B
F__inference_sequential_8_layer_call_and_return_conditional_losses_3542conv2d_20_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÑBÎ
"__inference_signature_wrapper_3583conv2d_20_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÜBÙ
(__inference_conv2d_20_layer_call_fn_3776inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3787inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¡B
/__inference_max_pooling2d_16_layer_call_fn_3029inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¼B¹
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÜBÙ
(__inference_conv2d_21_layer_call_fn_3796inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3807inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¡B
/__inference_max_pooling2d_17_layer_call_fn_3041inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¼B¹
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÜBÙ
(__inference_conv2d_22_layer_call_fn_3816inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3827inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¡B
/__inference_max_pooling2d_18_layer_call_fn_3053inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¼B¹
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÜBÙ
(__inference_conv2d_23_layer_call_fn_3836inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3847inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¡B
/__inference_max_pooling2d_19_layer_call_fn_3065inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¼B¹
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059inputs"à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÜBÙ
(__inference_flatten_4_layer_call_fn_3852inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_flatten_4_layer_call_and_return_conditional_losses_3858inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÛBØ
'__inference_dense_12_layer_call_fn_3867inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_dense_12_layer_call_and_return_conditional_losses_3878inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÛBØ
'__inference_dense_13_layer_call_fn_3887inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_dense_13_layer_call_and_return_conditional_losses_3898inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ÛBØ
'__inference_dense_14_layer_call_fn_3907inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_dense_14_layer_call_and_return_conditional_losses_3918inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
Ö	variables
×	keras_api

Øtotal

Ùcount"
_tf_keras_metric
c
Ú	variables
Û	keras_api

Ütotal

Ýcount
Þ
_fn_kwargs"
_tf_keras_metric
0
Ø0
Ù1"
trackable_list_wrapper
.
Ö	variables"
_generic_user_object
:  (2total
:  (2count
0
Ü0
Ý1"
trackable_list_wrapper
.
Ú	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:- 2Adam/conv2d_20/kernel/m
!: 2Adam/conv2d_20/bias/m
/:-  2Adam/conv2d_21/kernel/m
!: 2Adam/conv2d_21/bias/m
/:-  2Adam/conv2d_22/kernel/m
!: 2Adam/conv2d_22/bias/m
/:-  2Adam/conv2d_23/kernel/m
!: 2Adam/conv2d_23/bias/m
(:&
(2Adam/dense_12/kernel/m
!:2Adam/dense_12/bias/m
(:&
2Adam/dense_13/kernel/m
!:2Adam/dense_13/bias/m
':%	2Adam/dense_14/kernel/m
 :2Adam/dense_14/bias/m
/:- 2Adam/conv2d_20/kernel/v
!: 2Adam/conv2d_20/bias/v
/:-  2Adam/conv2d_21/kernel/v
!: 2Adam/conv2d_21/bias/v
/:-  2Adam/conv2d_22/kernel/v
!: 2Adam/conv2d_22/bias/v
/:-  2Adam/conv2d_23/kernel/v
!: 2Adam/conv2d_23/bias/v
(:&
(2Adam/dense_12/kernel/v
!:2Adam/dense_12/bias/v
(:&
2Adam/dense_13/kernel/v
!:2Adam/dense_13/bias/v
':%	2Adam/dense_14/kernel/v
 :2Adam/dense_14/bias/v­
__inference__wrapped_model_3017*+89FGZ[bcjkB¢?
8¢5
30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬
ª "3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿ·
C__inference_conv2d_20_layer_call_and_return_conditional_losses_3787p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÈ¬
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿÆª 
 
(__inference_conv2d_20_layer_call_fn_3776c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÈ¬
ª ""ÿÿÿÿÿÿÿÿÿÆª µ
C__inference_conv2d_21_layer_call_and_return_conditional_losses_3807n*+8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿc 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿa 
 
(__inference_conv2d_21_layer_call_fn_3796a*+8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿc 
ª "!ÿÿÿÿÿÿÿÿÿa ³
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3827l897¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ0I 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ.G 
 
(__inference_conv2d_22_layer_call_fn_3816_897¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ0I 
ª " ÿÿÿÿÿÿÿÿÿ.G ³
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3847lFG7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ# 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ! 
 
(__inference_conv2d_23_layer_call_fn_3836_FG7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ# 
ª " ÿÿÿÿÿÿÿÿÿ! ¤
B__inference_dense_12_layer_call_and_return_conditional_losses_3878^Z[0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ(
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_12_layer_call_fn_3867QZ[0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ(
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_13_layer_call_and_return_conditional_losses_3898^bc0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_13_layer_call_fn_3887Qbc0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
B__inference_dense_14_layer_call_and_return_conditional_losses_3918]jk0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
'__inference_dense_14_layer_call_fn_3907Pjk0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¨
C__inference_flatten_4_layer_call_and_return_conditional_losses_3858a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ(
 
(__inference_flatten_4_layer_call_fn_3852T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
 
ª "ÿÿÿÿÿÿÿÿÿ(í
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_3023R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_16_layer_call_fn_3029R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_3035R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_17_layer_call_fn_3041R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_3047R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_18_layer_call_fn_3053R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_3059R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_19_layer_call_fn_3065R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÎ
F__inference_sequential_8_layer_call_and_return_conditional_losses_3498*+89FGZ[bcjkJ¢G
@¢=
30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Î
F__inference_sequential_8_layer_call_and_return_conditional_losses_3542*+89FGZ[bcjkJ¢G
@¢=
30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
F__inference_sequential_8_layer_call_and_return_conditional_losses_3708z*+89FGZ[bcjkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÈ¬
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
F__inference_sequential_8_layer_call_and_return_conditional_losses_3767z*+89FGZ[bcjkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÈ¬
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¥
+__inference_sequential_8_layer_call_fn_3235v*+89FGZ[bcjkJ¢G
@¢=
30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¥
+__inference_sequential_8_layer_call_fn_3454v*+89FGZ[bcjkJ¢G
@¢=
30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_8_layer_call_fn_3616m*+89FGZ[bcjkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÈ¬
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_8_layer_call_fn_3649m*+89FGZ[bcjkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÈ¬
p

 
ª "ÿÿÿÿÿÿÿÿÿÃ
"__inference_signature_wrapper_3583*+89FGZ[bcjkU¢R
¢ 
KªH
F
conv2d_20_input30
conv2d_20_inputÿÿÿÿÿÿÿÿÿÈ¬"3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿ