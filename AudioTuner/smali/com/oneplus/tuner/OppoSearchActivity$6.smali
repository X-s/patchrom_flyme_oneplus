.class Lcom/oneplus/tuner/OppoSearchActivity$6;
.super Ljava/lang/Object;
.source "OppoSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 386
    iput-object p1, p0, Lcom/oneplus/tuner/OppoSearchActivity$6;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$6;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/oneplus/tuner/OppoSearchActivity;->access$100(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$6;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/oneplus/tuner/OppoSearchActivity;->access$700(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 392
    return-void
.end method
