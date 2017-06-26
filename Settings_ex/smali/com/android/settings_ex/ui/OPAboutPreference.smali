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

.field private mFirmwareVersion:Landroid/widget/TextView;

.field private mFirmwareVersionName:Ljava/lang/String;

.field private mLayoutResId:I

.field private mSecurityPatch:Landroid/widget/TextView;

.field private mSecurityPatchName:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    const v0, 0x7f040088

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

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mFirmwareVersionName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mSecurityPatchName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPAboutPreference;->initViews(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const v0, 0x7f040088

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

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mFirmwareVersionName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mSecurityPatchName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPAboutPreference;->initViews(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const v0, 0x7f040088

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

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mFirmwareVersionName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mSecurityPatchName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPAboutPreference;->initViews(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->title:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0621

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c061f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0623

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0624

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    .line 91
    iget v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPAboutPreference;->setLayoutResource(I)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 174
    const v0, 0x7f1200f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceType:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v0, 0x7f1200f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemory:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceMemoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v0, 0x7f1200f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemory:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceDDRMemoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const v0, 0x7f1200f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mFirmwareVersion:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mFirmwareVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mFirmwareVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v0, 0x7f1200f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mSecurityPatch:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mSecurityPatch:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mSecurityPatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v0, 0x7f1200f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersion:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v0, 0x7f1200fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersion:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceAndroidVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v0, 0x7f1200fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersion:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceFreqVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v0, 0x7f1200fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersion:Landroid/widget/TextView;

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceCoreVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAndroidVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    .line 141
    return-void
.end method

.method public setDeviceCoreVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0624

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    .line 155
    return-void
.end method

.method public setDeviceDDRMemory(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    .line 162
    return-void
.end method

.method public setDeviceFreqVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    .line 148
    return-void
.end method

.method public setDeviceMemory(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    .line 113
    return-void
.end method

.method public setDeviceSystemVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "H2"

    const-string v2, "H\u2082"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mDeviceSystemVersionName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0621

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    .line 106
    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mFirmwareVersionName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSecurityPatch(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0158

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

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->mSecurityPatchName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPAboutPreference;->title:Ljava/lang/String;

    .line 99
    return-void
.end method
