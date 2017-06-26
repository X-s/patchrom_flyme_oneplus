.class Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;
.super Ljava/lang/Object;
.source "OPNumPadKeyForPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/password/OPNumPadKeyForPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    # getter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$000(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    # getter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextViewResId:I
    invoke-static {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$100(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    # getter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextViewResId:I
    invoke-static {v2}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$100(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    check-cast v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .end local v0    # "v":Landroid/view/View;
    # setter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v1, v0}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$002(Lcom/oneplus/settings/password/OPNumPadKeyForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    # getter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$000(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    # getter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$000(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    # getter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mTextView:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$000(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    # getter for: Lcom/oneplus/settings/password/OPNumPadKeyForPin;->mDigit:I
    invoke-static {v2}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->access$200(Lcom/oneplus/settings/password/OPNumPadKeyForPin;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->append(C)V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->userActivity()V

    .line 69
    iget-object v1, p0, Lcom/oneplus/settings/password/OPNumPadKeyForPin$1;->this$0:Lcom/oneplus/settings/password/OPNumPadKeyForPin;

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPNumPadKeyForPin;->doHapticKeyClick()V

    .line 70
    return-void
.end method
