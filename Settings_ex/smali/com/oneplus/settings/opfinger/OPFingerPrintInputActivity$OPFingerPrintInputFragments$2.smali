.class Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;
.super Ljava/lang/Object;
.source "OPFingerPrintInputActivity.java"

# interfaces
.implements Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->registerScreenListener()V
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
    .line 168
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mNoLockScreen:Z
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->onPause()V

    .line 188
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mNoLockScreen:Z
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->onResume()V

    .line 180
    :cond_0
    return-void
.end method

.method public onUserPresent()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method
