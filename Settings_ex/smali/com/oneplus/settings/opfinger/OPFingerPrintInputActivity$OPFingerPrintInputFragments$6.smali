.class Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$6;
.super Ljava/lang/Object;
.source "OPFingerPrintInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 575
    return-void
.end method
