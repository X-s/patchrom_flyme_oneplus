.class Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;
.super Ljava/lang/Object;
.source "OPFingerPrintInputViewCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    iget-object v0, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    invoke-interface {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;->onOPFingerComfirmClick()V

    .line 89
    :cond_0
    return-void
.end method
