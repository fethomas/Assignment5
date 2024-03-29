DATA_DIR=tensorflow-shakespeare-master/tensorflow-shakespeare-master/data
MODEL_DIR=models
rm -Rf $MODEL_DIR
mkdir -p $MODEL_DIR
python3 -m sockeye.train --source $DATA_DIR/shakespeare/sparknotes/merged/modernTraining.snt.aligned \
        --target $DATA_DIR/shakespeare/sparknotes/merged/originalTraining.snt.aligned \
        --encoder cnn \
        --decoder cnn \
	#--cnn-activation-type relu \
	#--optimizer adam \
	#--rnn-attention-type bilinear \
    #--rnn-num-hidden 512 \
		--max-num-epochs 300 \
        --validation-source $DATA_DIR/shakespeare/sparknotes/merged/modernValidation.snt.aligned\
	--validation-target $DATA_DIR/shakespeare/sparknotes/merged/originalValidation.snt.aligned \
        --output $MODEL_DIR \
        --decode-and-evaluate 500 \
