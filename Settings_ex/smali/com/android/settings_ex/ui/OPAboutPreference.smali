.class public Lcom/android/settings_ex/ui/OPAboutPreference;
.super Landroid/preference/Preference;
.source "OPAboutPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceAndroidVersion:Landroid/widget/TextView;

.field private mDeviceAndroidVersionName:Ljava/lang/String;

.field private mDeviceCoreVersion:Landroid/widget/TextView;

.field private mDeviceCoreVersionName:Ljava/lang/String;

.field private mDeviceDDRMemory:Landroid/widget/TextView;

.field private mDeviceDDRMemoryName:Ljava/lang/String;

.field private mDeviceFreqVersion:Landroid/widget/TextView;

.field private mDeviceFreqVersionName:Ljava/lang/String;

.field private mDeviceMemory:Landroid/widget/TextView;

.field private mDeviceMemoryName:Ljava/lang/String;

.field private mDeviceSystemVersion:Landroid/widget/TextView;

.field private mDeviceSystemVersionName:Ljava/lang/String;

.field private mDeviceType:Landroid/widget/TextView;

.field private mDeviceTypeName:Ljava/lang/String;

.field private mLayoutResId:I

.field private mTitle:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    const v0, 0x7f040063

    iput v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mLayoutResId:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->title:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemoryName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPAboutPreference;->initViews(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const v0, 0x7f040063

    iput v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mLayoutResId:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->title:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemoryName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPAboutPreference;->initViews(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const v0, 0x7f040063

    iput v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mLayoutResId:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->title:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemoryName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPAboutPreference;->initViews(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->title:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 78
    iget v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPAboutPreference;->setLayoutResource(I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 124
    const v0, 0x7f0f0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceType:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v0, 0x7f0f0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemory:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f0f0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemory:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v0, 0x7f0f0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersion:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v0, 0x7f0f0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersion:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v0, 0x7f0f0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersion:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v0, 0x7f0f0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersion:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAndroidVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDeviceCoreVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDeviceDDRMemory(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemoryName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDeviceFreqVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDeviceMemory(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDeviceSystemVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->title:Ljava/lang/String;

    .line 86
    return-void
.end method
