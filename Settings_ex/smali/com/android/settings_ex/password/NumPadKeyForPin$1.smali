.class Lcom/android/settings_ex/password/NumPadKeyForPin$1;
.super Ljava/lang/Object;
.source "NumPadKeyForPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/password/NumPadKeyForPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/password/NumPadKeyForPin;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    # getter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mTextView:Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$000(Lcom/android/settings_ex/password/NumPadKeyForPin;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    # getter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mTextViewResId:I
    invoke-static {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$100(Lcom/android/settings_ex/password/NumPadKeyForPin;)I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    invoke-virtual {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    # getter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mTextViewResId:I
    invoke-static {v2}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$100(Lcom/android/settings_ex/password/NumPadKeyForPin;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    check-cast v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .end local v0    # "v":Landroid/view/View;
    # setter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mTextView:Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    invoke-static {v1, v0}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$002(Lcom/android/settings_ex/password/NumPadKeyForPin;Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    # getter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mTextView:Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$000(Lcom/android/settings_ex/password/NumPadKeyForPin;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    # getter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mTextView:Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$000(Lcom/android/settings_ex/password/NumPadKeyForPin;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    # getter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mTextView:Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$000(Lcom/android/settings_ex/password/NumPadKeyForPin;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    # getter for: Lcom/android/settings_ex/password/NumPadKeyForPin;->mDigit:I
    invoke-static {v2}, Lcom/android/settings_ex/password/NumPadKeyForPin;->access$200(Lcom/android/settings_ex/password/NumPadKeyForPin;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->append(C)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    invoke-virtual {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->userActivity()V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/password/NumPadKeyForPin$1;->this$0:Lcom/android/settings_ex/password/NumPadKeyForPin;

    invoke-virtual {v1}, Lcom/android/settings_ex/password/NumPadKeyForPin;->doHapticKeyClick()V

    .line 69
    return-void
.end method
