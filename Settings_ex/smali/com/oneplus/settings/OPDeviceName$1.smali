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

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 119
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/widget/OPEditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->name:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->num:I

    .line 122
    iget v2, p0, Lcom/oneplus/settings/OPDeviceName$1;->num:I

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    .line 123
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    # getter for: Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/settings/OPDeviceName;->access$100(Lcom/oneplus/settings/OPDeviceName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 125
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 126
    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 132
    .local v0, "flag":Z
    :goto_0
    if-nez v0, :cond_2

    .line 133
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$200()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$200()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-virtual {v3}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :goto_1
    return-void

    .line 131
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    .restart local v0    # "flag":Z
    :cond_2
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$200()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$200()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-virtual {v3}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 109
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/OPEditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 111
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    # getter for: Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/widget/OPEditText;
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/oneplus/settings/OPDeviceName;->access$102(Lcom/oneplus/settings/OPDeviceName;Ljava/lang/String;)Ljava/lang/String;

    .line 115
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
