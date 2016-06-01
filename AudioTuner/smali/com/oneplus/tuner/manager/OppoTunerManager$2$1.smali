.class Lcom/oneplus/tuner/manager/OppoTunerManager$2$1;
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
    .line 309
    iput-object p1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$2$1;->this$1:Lcom/oneplus/tuner/manager/OppoTunerManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$500()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-static {v0, v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->loadDefaultEffectsFromXml(Landroid/content/Context;I)V

    .line 315
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$500()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050002

    invoke-static {v0, v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->loadDefaultEffectsFromXml14049(Landroid/content/Context;I)V

    .line 316
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$500()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->loadDefaultEffectsFromXml14001(Landroid/content/Context;I)V

    .line 318
    return-void
.end method
