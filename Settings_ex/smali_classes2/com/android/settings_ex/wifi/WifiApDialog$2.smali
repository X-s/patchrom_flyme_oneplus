.class Lcom/android/settings_ex/wifi/WifiApDialog$2;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field num:I

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-wrap0(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    .line 284
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->name:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->num:I

    .line 287
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->num:I

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get2(Lcom/android/settings_ex/wifi/WifiApDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 291
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 282
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 276
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->-get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->-set1(Lcom/android/settings_ex/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 273
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
    .line 270
    return-void
.end method
