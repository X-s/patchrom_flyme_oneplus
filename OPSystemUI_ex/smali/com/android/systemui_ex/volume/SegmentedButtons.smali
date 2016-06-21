.class public Lcom/android/systemui_ex/volume/SegmentedButtons;
.super Landroid/widget/LinearLayout;
.source "SegmentedButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

.field private final mClick:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mSelectedValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Lcom/android/systemui_ex/volume/SegmentedButtons$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/volume/SegmentedButtons$2;-><init>(Lcom/android/systemui_ex/volume/SegmentedButtons;)V

    iput-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->setOrientation(I)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/volume/SegmentedButtons;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/SegmentedButtons;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->fireInteraction()V

    return-void
.end method

.method private fireInteraction()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;->onInteraction()V

    .line 108
    :cond_0
    return-void
.end method

.method private fireOnSelected()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    iget-object v1, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;->onSelected(Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public addButton(IILjava/lang/Object;)V
    .locals 5
    .param p1, "labelResId"    # I
    .param p2, "iconResId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v2, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004d

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, "b":Landroid/widget/Button;
    const v2, 0x7f0f017f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 73
    invoke-virtual {v0, v4, p2, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 74
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 78
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v2, Lcom/android/systemui_ex/volume/SegmentedButtons$1;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/volume/SegmentedButtons$1;-><init>(Lcom/android/systemui_ex/volume/SegmentedButtons;)V

    invoke-static {v0, v2}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 88
    return-void
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    .line 49
    return-void
.end method

.method public setSelectedValue(Ljava/lang/Object;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v4, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "c":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, "tag":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 62
    .local v2, "selected":Z
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 63
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v4, v5

    iget-object v4, p0, Lcom/android/systemui_ex/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v2, :cond_1

    const v4, 0x7f080042

    :goto_2
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_1
    const v4, 0x7f080043

    goto :goto_2

    .line 66
    .end local v0    # "c":Landroid/widget/TextView;
    .end local v2    # "selected":Z
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->fireOnSelected()V

    goto :goto_0
.end method

.method public updateLocale()V
    .locals 4

    .prologue
    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, "b":Landroid/widget/Button;
    const v3, 0x7f0f017f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    .local v2, "labelResId":I
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "b":Landroid/widget/Button;
    .end local v2    # "labelResId":I
    :cond_0
    return-void
.end method
