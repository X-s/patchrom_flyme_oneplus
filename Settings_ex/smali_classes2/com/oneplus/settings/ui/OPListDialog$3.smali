.class Lcom/oneplus/settings/ui/OPListDialog$3;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPListDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPListDialog;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 154
    .local v1, "viewId":I
    const v2, 0x7f11021f

    if-ne v2, v1, :cond_2

    .line 155
    const/4 v0, 0x0

    .line 165
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v2, v0}, Lcom/oneplus/settings/ui/OPListDialog;->-set0(Lcom/oneplus/settings/ui/OPListDialog;I)I

    .line 166
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPListDialog;->-get3(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPListDialog;->-get3(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;->OnDialogListItemClick(I)V

    .line 150
    :cond_1
    return-void

    .line 156
    :cond_2
    const v2, 0x7f110220

    if-ne v2, v1, :cond_3

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :cond_3
    const v2, 0x7f110221

    if-ne v2, v1, :cond_4

    .line 159
    const/4 v0, 0x2

    goto :goto_0

    .line 160
    :cond_4
    const v2, 0x7f110222

    if-ne v2, v1, :cond_5

    .line 161
    const/4 v0, 0x3

    goto :goto_0

    .line 162
    :cond_5
    const v2, 0x7f110223

    if-ne v2, v1, :cond_0

    .line 163
    const/4 v0, 0x4

    goto :goto_0
.end method
