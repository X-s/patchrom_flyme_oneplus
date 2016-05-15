.class public Lcom/android/internal/policy/impl/keyguardToast;
.super Ljava/lang/Object;
.source "keyguardToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguardToast$TN;,
        Lcom/android/internal/policy/impl/keyguardToast$Duration;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "keyguardToast"

.field static final localLOGV:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguardToast;->mContext:Landroid/content/Context;

    .line 77
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v3, 0x10900eb

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "v":Landroid/view/View;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguardToast;->mNextView:Landroid/view/View;

    .line 84
    iput p3, p0, Lcom/android/internal/policy/impl/keyguardToast;->mDuration:I

    .line 86
    new-instance v3, Lcom/android/internal/policy/impl/keyguardToast$TN;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/keyguardToast$TN;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    .line 87
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/policy/impl/keyguardToast$TN;->mY:I

    .line 89
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/policy/impl/keyguardToast$TN;->mGravity:I

    .line 91
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguardToast;->mNextView:Landroid/view/View;

    iput-object v4, v3, Lcom/android/internal/policy/impl/keyguardToast$TN;->mNextView:Landroid/view/View;

    .line 92
    return-void
.end method


# virtual methods
.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguardToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguardToast;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguardToast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguardToast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguardToast;->mNextView:Landroid/view/View;

    .line 118
    return-void
.end method
