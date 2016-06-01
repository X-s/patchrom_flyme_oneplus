.class Lcom/oneplus/tuner/providers/SoundEffectDao$7;
.super Ljava/lang/Object;
.source "SoundEffectDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/SoundEffectDao;->setDownloadUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$7;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$7;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    iget-object v0, v0, Lcom/oneplus/tuner/providers/SoundEffectDao;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 280
    return-void
.end method
