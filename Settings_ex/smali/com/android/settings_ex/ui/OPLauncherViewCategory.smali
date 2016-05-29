.class public Lcom/android/settings_ex/ui/OPLauncherViewCategory;
.super Landroid/preference/PreferenceCategory;
.source "OPLauncherViewCategory.java"


# instance fields
.field private ImageId:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mLText:Landroid/widget/TextView;

.field private mLayoutResId:I

.field private mRText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7f04006b

    iput v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mLayoutResId:I

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->initViews(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x7f04006b

    iput v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mLayoutResId:I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->initViews(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v0, 0x7f04006b

    iput v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mLayoutResId:I

    .line 32
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mContext:Landroid/content/Context;

    .line 50
    const v0, 0x7f0200ab

    iput v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->ImageId:I

    .line 54
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 61
    const v0, 0x7f0f0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mImage:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->ImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    const v0, 0x7f0f0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mLText:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mLText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mRText:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mRText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 77
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "layout":Landroid/view/View;
    return-object v0
.end method

.method public setLauncher(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const v1, 0x7f0200ab

    .line 84
    move v0, p1

    .line 85
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 94
    iput v1, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->ImageId:I

    .line 97
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iput v1, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->ImageId:I

    goto :goto_0

    .line 91
    :pswitch_1
    const v1, 0x7f0200ae

    iput v1, p0, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->ImageId:I

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
