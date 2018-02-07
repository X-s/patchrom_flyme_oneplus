.class Lcom/oneplus/settings/OPDeviceName$1;
.super Ljava/lang/Object;
.source "OPDeviceName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDeviceName;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field num:I

.field final synthetic this$0:Lcom/oneplus/settings/OPDeviceName;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDeviceName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPDeviceName;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 122
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->name:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->num:I

    .line 125
    iget v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->num:I

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    .line 126
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {v3}, Lcom/oneplus/settings/OPDeviceName;->-get3(Lcom/oneplus/settings/OPDeviceName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 128
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 129
    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 134
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 146
    .local v0, "flag":Z
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {v2}, Lcom/oneplus/settings/OPDeviceName;->-get1(Lcom/oneplus/settings/OPDeviceName;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {v2}, Lcom/oneplus/settings/OPDeviceName;->-get1(Lcom/oneplus/settings/OPDeviceName;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 121
    :cond_2
    return-void

    .line 134
    .end local v0    # "flag":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 114
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->-get0()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/OPDeviceName;->-set0(Lcom/oneplus/settings/OPDeviceName;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 104
    return-void
.end method
