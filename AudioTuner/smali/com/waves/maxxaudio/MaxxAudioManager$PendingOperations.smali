.class Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;
.super Ljava/lang/Object;
.source "MaxxAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waves/maxxaudio/MaxxAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingOperations"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "#"


# instance fields
.field private mOperationType:I

.field private mParams:Ljava/lang/String;

.field final synthetic this$0:Lcom/waves/maxxaudio/MaxxAudioManager;


# direct methods
.method public constructor <init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V
    .locals 0
    .param p2, "op"    # I
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mOperationType:I

    .line 33
    iput-object p3, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mParams:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public operation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    const-string v2, "MaxxAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingOperations.operation mOperationType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mOperationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mOperationType:I

    packed-switch v2, :pswitch_data_0

    .line 70
    :pswitch_0
    const-string v2, "MaxxAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingOperations.operation unknow operation type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mOperationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    :pswitch_1
    return-void

    .line 44
    :pswitch_2
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    iget-object v3, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->effectLoadPresets(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->effectSavePresets()V

    goto :goto_0

    .line 50
    :pswitch_4
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->getMaxxValues()V

    goto :goto_0

    .line 53
    :pswitch_5
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    iget-object v3, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mParams:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    goto :goto_0

    .line 58
    :pswitch_6
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    iget-object v3, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mParams:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->setOutputMode(I)V

    goto :goto_0

    .line 61
    :pswitch_7
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mParams:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "params":[Ljava/lang/String;
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    goto :goto_0

    .line 65
    .end local v0    # "params":[Ljava/lang/String;
    :pswitch_8
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->mParams:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "syncparams":[Ljava/lang/String;
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->this$0:Lcom/waves/maxxaudio/MaxxAudioManager;

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
