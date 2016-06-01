.class Lcom/oneplus/tuner/OppoSearchActivity$5;
.super Ljava/lang/Object;
.source "OppoSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OppoSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OppoSearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OppoSearchActivity;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/oneplus/tuner/OppoSearchActivity$5;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$5;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->topLineView:Lcom/oppo/tribune/square/SquareTopLineView;
    invoke-static {v0}, Lcom/oneplus/tuner/OppoSearchActivity;->access$600(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$5;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistorySearch:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/oneplus/tuner/OppoSearchActivity;->access$300(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$5;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/oneplus/tuner/OppoSearchActivity;->access$400(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$5;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mClearInput:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/oneplus/tuner/OppoSearchActivity;->access$900(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$5;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mClearInput:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/oneplus/tuner/OppoSearchActivity;->access$900(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 362
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 368
    return-void
.end method
