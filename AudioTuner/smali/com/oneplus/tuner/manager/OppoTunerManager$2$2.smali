.class Lcom/oneplus/tuner/manager/OppoTunerManager$2$2;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/manager/OppoTunerManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/manager/OppoTunerManager$2;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/manager/OppoTunerManager$2;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$2$2;->this$1:Lcom/oneplus/tuner/manager/OppoTunerManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    # setter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mInited:Z
    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$702(Z)Z

    .line 350
    return-void
.end method
