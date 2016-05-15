.class public Lcom/android/internal/policy/impl/keyguardToast$TN;
.super Ljava/lang/Object;
.source "keyguardToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguardToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TN"
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 128
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mHandler:Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 144
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 146
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 147
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 148
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 149
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 153
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    .line 215
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 159
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mNextView:Landroid/view/View;

    if-eq v4, v5, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguardToast$TN;->handleHide()V

    .line 162
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mNextView:Landroid/view/View;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    .line 163
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    :cond_0
    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mWM:Landroid/view/WindowManager;

    .line 171
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 172
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 174
    .local v2, "gravity":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 175
    and-int/lit8 v4, v2, 0x7

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 178
    :cond_1
    and-int/lit8 v4, v2, 0x70

    const/16 v5, 0x70

    if-ne v4, v5, :cond_2

    .line 179
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mX:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 182
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mY:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 183
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mVerticalMargin:F

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 184
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mHorizontalMargin:F

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 186
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 187
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d9

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 188
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 195
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguardToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "gravity":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    return-void
.end method
