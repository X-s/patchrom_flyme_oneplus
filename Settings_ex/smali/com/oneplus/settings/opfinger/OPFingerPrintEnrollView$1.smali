.class Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;
.super Ljava/lang/Object;
.source "OPFingerPrintEnrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    invoke-interface {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;->onOPFingerComfirmClick()V

    .line 94
    :cond_0
    return-void
.end method
