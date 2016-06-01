.class Lcom/oneplus/tuner/OppoSearchActivity$4;
.super Ljava/lang/Object;
.source "OppoSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 317
    iput-object p1, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 321
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 322
    .local v0, "clickET":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$700(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 330
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 332
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :goto_0
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$000(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 344
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistorySearch:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$300(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$400(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 347
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$500(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->startSearch(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->topLineView:Lcom/oppo/tribune/square/SquareTopLineView;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$600(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/oppo/tribune/square/SquareTopLineView;->setVisibility(I)V

    .line 352
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 335
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_2
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$4;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
