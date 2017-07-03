.class Lcom/oneplus/screenshot/longshot/state/MainState$3;
.super Ljava/lang/Object;
.source "MainState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/MainState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/MainState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "Longshot.MainState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnterRunnable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    # invokes: Lcom/oneplus/screenshot/longshot/state/MainState;->hasNext()Z
    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$000(Lcom/oneplus/screenshot/longshot/state/MainState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    # invokes: Lcom/oneplus/screenshot/longshot/state/MainState;->hasNext()Z
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$000(Lcom/oneplus/screenshot/longshot/state/MainState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    # getter for: Lcom/oneplus/screenshot/longshot/state/MainState;->mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$100(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    move-result-object v1

    # invokes: Lcom/oneplus/screenshot/longshot/state/MainState;->gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$200(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    # getter for: Lcom/oneplus/screenshot/longshot/state/MainState;->mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$300(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    move-result-object v1

    # invokes: Lcom/oneplus/screenshot/longshot/state/MainState;->gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$200(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    goto :goto_0
.end method
