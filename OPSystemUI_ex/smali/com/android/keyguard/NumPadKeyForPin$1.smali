.class Lcom/android/keyguard/NumPadKeyForPin$1;
.super Ljava/lang/Object;
.source "NumPadKeyForPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKeyForPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKeyForPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKeyForPin;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    # getter for: Lcom/android/keyguard/NumPadKeyForPin;->mTextView:Lcom/android/keyguard/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKeyForPin;->access$000(Lcom/android/keyguard/NumPadKeyForPin;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    # getter for: Lcom/android/keyguard/NumPadKeyForPin;->mTextViewResId:I
    invoke-static {v1}, Lcom/android/keyguard/NumPadKeyForPin;->access$100(Lcom/android/keyguard/NumPadKeyForPin;)I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKeyForPin;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    # getter for: Lcom/android/keyguard/NumPadKeyForPin;->mTextViewResId:I
    invoke-static {v2}, Lcom/android/keyguard/NumPadKeyForPin;->access$100(Lcom/android/keyguard/NumPadKeyForPin;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin;

    .end local v0    # "v":Landroid/view/View;
    # setter for: Lcom/android/keyguard/NumPadKeyForPin;->mTextView:Lcom/android/keyguard/PasswordTextViewForPin;
    invoke-static {v1, v0}, Lcom/android/keyguard/NumPadKeyForPin;->access$002(Lcom/android/keyguard/NumPadKeyForPin;Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    # getter for: Lcom/android/keyguard/NumPadKeyForPin;->mTextView:Lcom/android/keyguard/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKeyForPin;->access$000(Lcom/android/keyguard/NumPadKeyForPin;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    # getter for: Lcom/android/keyguard/NumPadKeyForPin;->mTextView:Lcom/android/keyguard/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKeyForPin;->access$000(Lcom/android/keyguard/NumPadKeyForPin;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    # getter for: Lcom/android/keyguard/NumPadKeyForPin;->mTextView:Lcom/android/keyguard/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKeyForPin;->access$000(Lcom/android/keyguard/NumPadKeyForPin;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    # getter for: Lcom/android/keyguard/NumPadKeyForPin;->mDigit:I
    invoke-static {v2}, Lcom/android/keyguard/NumPadKeyForPin;->access$200(Lcom/android/keyguard/NumPadKeyForPin;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->append(C)V

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKeyForPin;->userActivity()V

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/NumPadKeyForPin$1;->this$0:Lcom/android/keyguard/NumPadKeyForPin;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKeyForPin;->doHapticKeyClick()V

    .line 67
    return-void
.end method
