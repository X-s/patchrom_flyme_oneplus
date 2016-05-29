.class Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$4;
.super Ljava/lang/Object;
.source "OPFingerPrintInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->onProgressUpdate(ILjava/util/ArrayList;)V
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
    .line 396
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$4;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$4;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->showContinueView()V

    .line 399
    return-void
.end method
