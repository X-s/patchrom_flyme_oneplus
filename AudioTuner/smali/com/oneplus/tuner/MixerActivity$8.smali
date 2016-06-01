.class Lcom/oneplus/tuner/MixerActivity$8;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MixerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$8;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 606
    sget-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$8;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MixerActivity;->reset()V

    .line 614
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0700

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
