.class public Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;
.super Landroid/widget/LinearLayout;
.source "OPRadioButtinGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public addChild(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "featureToggleNames"    # [Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 47
    iget-object v3, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04010d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f110063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, "titleView":Landroid/widget/TextView;
    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 51
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0, v2, v0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->addView(Landroid/view/View;I)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "titleView":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setSelect(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;->OnRadioGroupClick(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public setOnRadioGroupClickListener(Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->mOnRadioGroupClickListener:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;

    .line 94
    return-void
.end method

.method public setSelect(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildCount()I

    move-result v0

    .line 79
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 81
    .local v2, "rb":Landroid/widget/RadioButton;
    if-ne p1, v1, :cond_0

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 77
    .end local v2    # "rb":Landroid/widget/RadioButton;
    :cond_1
    return-void
.end method

.method public setSelect(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildCount()I

    move-result v0

    .line 67
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 68
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 69
    .local v2, "rb":Landroid/widget/RadioButton;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 65
    .end local v2    # "rb":Landroid/widget/RadioButton;
    :cond_1
    return-void
.end method
