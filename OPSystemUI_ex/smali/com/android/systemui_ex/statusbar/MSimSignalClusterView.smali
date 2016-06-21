.class public Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
.implements Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
.implements Lcom/android/systemui_ex/statusbar/policy/SecurityController$SecurityControllerCallback;


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mDataActResourceId:[I

.field private mDataActivity:[Landroid/widget/ImageView;

.field private mDataActivityId:[I

.field private mDataGroup:[Landroid/view/ViewGroup;

.field private mDataGroupResourceId:[I

.field private mDataVisible:[Z

.field private mIsAirplaneMode:Z

.field private mIsCta:Z

.field mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

.field mMobile:[Landroid/widget/ImageView;

.field private mMobileActResourceId:[I

.field mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileCdma1x:Landroid/widget/ImageView;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xOnly:Landroid/widget/ImageView;

.field private mMobileCdma1xOnlyId:I

.field private mMobileCdma1xOnlyVisible:Z

.field private mMobileCdma3g:Landroid/widget/ImageView;

.field private mMobileCdma3gId:I

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field private mMobileCdmaVisible:Z

.field private mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

.field private mMobileDataVoiceGroupResourceId:[I

.field private mMobileDataVoiceVisible:[Z

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field private mMobileSignalData:[Landroid/widget/ImageView;

.field private mMobileSignalDataId:[I

.field private mMobileSignalDataResourceId:[I

.field private mMobileSignalVoice:[Landroid/widget/ImageView;

.field private mMobileSignalVoiceId:[I

.field private mMobileSignalVoiceResourceId:[I

.field private mMobileStrengthId:[I

.field mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:Z

.field private mNoSimCardOneDrawable:Landroid/graphics/drawable/Drawable;

.field private mNoSimCardTwoDrawable:Landroid/graphics/drawable/Drawable;

.field private mNoSimIconId:[I

.field mNoSimSlot:[Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:[I

.field private final mNumPhones:I

.field private mRoaming:[Z

.field mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

.field private mShowTwoBars:[I

.field private mSpacer:Landroid/view/View;

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 66
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 67
    iput v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 69
    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    .line 75
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 78
    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 79
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 86
    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 101
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 103
    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    .line 104
    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    .line 105
    iput v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    .line 125
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    .line 127
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    .line 129
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActResourceId:[I

    .line 131
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    .line 133
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:[I

    .line 134
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroupResourceId:[I

    .line 136
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActResourceId:[I

    .line 138
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroupResourceId:[I

    .line 140
    new-array v1, v3, [I

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalDataResourceId:[I

    .line 142
    new-array v1, v3, [I

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoiceResourceId:[I

    .line 144
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    .line 151
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsCta:Z

    .line 163
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    .line 164
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 165
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    .line 166
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    .line 167
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    .line 168
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 169
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    .line 170
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    .line 171
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    .line 172
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    .line 173
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    .line 174
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    .line 175
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    .line 176
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    .line 177
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    .line 178
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    .line 179
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    .line 180
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    .line 181
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    .line 182
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    .line 183
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mRoaming:[Z

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    .line 186
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 187
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 188
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput v2, v1, v0

    .line 190
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v1, v0

    .line 191
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v1, v0

    .line 192
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v1, v0

    .line 193
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aput v2, v1, v0

    .line 194
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aput v2, v1, v0

    .line 196
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mRoaming:[Z

    aput-boolean v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimCardOneDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimCardTwoDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.ctaSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsCta:Z

    .line 208
    return-void

    .line 125
    :array_0
    .array-data 4
        0x7f0f00c0
        0x7f0f00d6
        0x7f0f00e0
    .end array-data

    .line 127
    :array_1
    .array-data 4
        0x7f0f00c1
        0x7f0f00dc
        0x7f0f00e4
    .end array-data

    .line 129
    :array_2
    .array-data 4
        0x7f0f00d1
        0x7f0f00db
        0x7f0f00e6
    .end array-data

    .line 131
    :array_3
    .array-data 4
        0x7f0f00c2
        0x7f0f00da
        0x7f0f00e5
    .end array-data

    .line 133
    :array_4
    .array-data 4
        0x7f0f00d2
        0x7f0f00dd
        0x7f0f00e7
    .end array-data

    .line 134
    :array_5
    .array-data 4
        0x7f0f00c8
        0x7f0f00d4
        0x7f0f00de
    .end array-data

    .line 136
    :array_6
    .array-data 4
        0x7f0f00c9
        0x7f0f00d5
        0x7f0f00df
    .end array-data

    .line 138
    :array_7
    .array-data 4
        0x7f0f00ce
        0x7f0f00d7
        0x7f0f00e1
    .end array-data

    .line 140
    :array_8
    .array-data 4
        0x7f0f00cf
        0x7f0f00d8
        0x7f0f00e2
    .end array-data

    .line 142
    :array_9
    .array-data 4
        0x7f0f00d0
        0x7f0f00d9
        0x7f0f00e3
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method private apply(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 481
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_7

    .line 486
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 495
    :goto_2
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    if-nez v0, :cond_8

    .line 496
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->setWifiActivityVisible(Z)V

    .line 507
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_b

    .line 508
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->updateMobile(I)V

    .line 509
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->updateCdma()V

    .line 510
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->updateData(I)V

    .line 511
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->updateDataVoice(I)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v0, v0, p1

    if-nez v0, :cond_9

    .line 515
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_c

    .line 534
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    :goto_5
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    if-nez v0, :cond_e

    .line 546
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v3, v0, p1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_d

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    :goto_7
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_f

    .line 554
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    :cond_2
    :goto_8
    if-eqz p1, :cond_4

    .line 563
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    if-eqz v0, :cond_10

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_4
    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsCta:Z

    if-nez v0, :cond_5

    .line 575
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->updateMobileIconGroup()V

    .line 579
    :cond_5
    invoke-static {p0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 483
    goto/16 :goto_1

    .line 491
    :cond_7
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 492
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->setWifiActivityVisible(Z)V

    goto/16 :goto_2

    .line 498
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1

    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->setWifiActivityVisible(Z)V

    goto/16 :goto_3

    .line 517
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_a

    .line 518
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 520
    :cond_a
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 525
    :cond_b
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 537
    :cond_c
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    move v0, v2

    .line 546
    goto/16 :goto_6

    .line 549
    :cond_e
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 557
    :cond_f
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 570
    :cond_10
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method private convertMobileStrengthIcon(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 831
    move v0, p1

    .line 832
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 896
    :goto_0
    return v0

    .line 834
    :sswitch_0
    const v0, 0x7f0202b9

    .line 835
    goto :goto_0

    .line 837
    :sswitch_1
    const v0, 0x7f0202c1

    .line 838
    goto :goto_0

    .line 840
    :sswitch_2
    const v0, 0x7f0202f7

    .line 841
    goto :goto_0

    .line 843
    :sswitch_3
    const v0, 0x7f0202ff

    .line 844
    goto :goto_0

    .line 846
    :sswitch_4
    const v0, 0x7f020339

    .line 847
    goto :goto_0

    .line 849
    :sswitch_5
    const v0, 0x7f020341

    .line 850
    goto :goto_0

    .line 852
    :sswitch_6
    const v0, 0x7f02037b

    .line 853
    goto :goto_0

    .line 855
    :sswitch_7
    const v0, 0x7f020383

    .line 856
    goto :goto_0

    .line 858
    :sswitch_8
    const v0, 0x7f0203bd

    .line 859
    goto :goto_0

    .line 861
    :sswitch_9
    const v0, 0x7f0203c5

    .line 862
    goto :goto_0

    .line 864
    :sswitch_a
    const v0, 0x7f0202ba

    .line 865
    goto :goto_0

    .line 867
    :sswitch_b
    const v0, 0x7f0202c2

    .line 868
    goto :goto_0

    .line 870
    :sswitch_c
    const v0, 0x7f0202f8

    .line 871
    goto :goto_0

    .line 873
    :sswitch_d
    const v0, 0x7f020300

    .line 874
    goto :goto_0

    .line 876
    :sswitch_e
    const v0, 0x7f02033a

    .line 877
    goto :goto_0

    .line 879
    :sswitch_f
    const v0, 0x7f020342

    .line 880
    goto :goto_0

    .line 882
    :sswitch_10
    const v0, 0x7f02037c

    .line 883
    goto :goto_0

    .line 885
    :sswitch_11
    const v0, 0x7f020384

    .line 886
    goto :goto_0

    .line 888
    :sswitch_12
    const v0, 0x7f0203be

    .line 889
    goto :goto_0

    .line 891
    :sswitch_13
    const v0, 0x7f0203c6

    .line 892
    goto :goto_0

    .line 832
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0202b8 -> :sswitch_0
        0x7f0202bd -> :sswitch_a
        0x7f0202c0 -> :sswitch_1
        0x7f0202c5 -> :sswitch_b
        0x7f0202f6 -> :sswitch_2
        0x7f0202fb -> :sswitch_c
        0x7f0202fe -> :sswitch_3
        0x7f020303 -> :sswitch_d
        0x7f020338 -> :sswitch_4
        0x7f02033d -> :sswitch_e
        0x7f020340 -> :sswitch_5
        0x7f020345 -> :sswitch_f
        0x7f02037a -> :sswitch_6
        0x7f02037f -> :sswitch_10
        0x7f020382 -> :sswitch_7
        0x7f020387 -> :sswitch_11
        0x7f0203bc -> :sswitch_8
        0x7f0203c1 -> :sswitch_12
        0x7f0203c4 -> :sswitch_9
        0x7f0203c9 -> :sswitch_13
    .end sparse-switch
.end method

.method private getCdma2gId(I)I
    .locals 4
    .param p1, "icon"    # I

    .prologue
    const/4 v2, 0x0

    .line 900
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v3, :cond_0

    move v1, v2

    .line 924
    :goto_0
    return v1

    .line 903
    :cond_0
    const/4 v1, 0x0

    .line 904
    .local v1, "retValue":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getGsmSignalLevel(I)I

    move-result v0

    .line 905
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 907
    :pswitch_0
    const v1, 0x7f0202b2

    .line 908
    goto :goto_0

    .line 910
    :pswitch_1
    const v1, 0x7f0202f0

    .line 911
    goto :goto_0

    .line 913
    :pswitch_2
    const v1, 0x7f020332

    .line 914
    goto :goto_0

    .line 916
    :pswitch_3
    const v1, 0x7f020374

    .line 917
    goto :goto_0

    .line 919
    :pswitch_4
    const v1, 0x7f0203b6

    .line 920
    goto :goto_0

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCdmaRoamId(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 983
    :goto_0
    return v0

    .line 933
    :sswitch_0
    const v0, 0x7f0202c7

    .line 934
    goto :goto_0

    .line 938
    :sswitch_1
    const v0, 0x7f020305

    .line 939
    goto :goto_0

    .line 943
    :sswitch_2
    const v0, 0x7f020347

    .line 944
    goto :goto_0

    .line 948
    :sswitch_3
    const v0, 0x7f020389

    .line 949
    goto :goto_0

    .line 953
    :sswitch_4
    const v0, 0x7f0203cb

    .line 954
    goto :goto_0

    .line 958
    :sswitch_5
    const v0, 0x7f0202c6

    .line 959
    goto :goto_0

    .line 963
    :sswitch_6
    const v0, 0x7f020304

    .line 964
    goto :goto_0

    .line 968
    :sswitch_7
    const v0, 0x7f020346

    .line 969
    goto :goto_0

    .line 973
    :sswitch_8
    const v0, 0x7f020388

    .line 974
    goto :goto_0

    .line 978
    :sswitch_9
    const v0, 0x7f0203ca

    .line 979
    goto :goto_0

    .line 929
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0202b5 -> :sswitch_5
        0x7f0202b6 -> :sswitch_0
        0x7f0202bb -> :sswitch_5
        0x7f0202bc -> :sswitch_0
        0x7f0202c3 -> :sswitch_5
        0x7f0202c4 -> :sswitch_0
        0x7f0202f3 -> :sswitch_6
        0x7f0202f4 -> :sswitch_1
        0x7f0202f9 -> :sswitch_6
        0x7f0202fa -> :sswitch_1
        0x7f020301 -> :sswitch_6
        0x7f020302 -> :sswitch_1
        0x7f020335 -> :sswitch_7
        0x7f020336 -> :sswitch_2
        0x7f02033b -> :sswitch_7
        0x7f02033c -> :sswitch_2
        0x7f020343 -> :sswitch_7
        0x7f020344 -> :sswitch_2
        0x7f020377 -> :sswitch_8
        0x7f020378 -> :sswitch_3
        0x7f02037d -> :sswitch_8
        0x7f02037e -> :sswitch_3
        0x7f020385 -> :sswitch_8
        0x7f020386 -> :sswitch_3
        0x7f0203b9 -> :sswitch_9
        0x7f0203ba -> :sswitch_4
        0x7f0203bf -> :sswitch_9
        0x7f0203c0 -> :sswitch_4
        0x7f0203c7 -> :sswitch_9
        0x7f0203c8 -> :sswitch_4
    .end sparse-switch
.end method

.method private getDefaultPhoneId()I
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getPhoneId(I)I

    move-result v0

    .line 433
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-lt v0, v1, :cond_1

    .line 434
    :cond_0
    const/4 v0, 0x0

    .line 436
    :cond_1
    return v0
.end method

.method private getMobileVoiceId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 802
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-nez v2, :cond_0

    .line 803
    const/4 v1, 0x0

    .line 827
    :goto_0
    return v1

    .line 806
    :cond_0
    const/4 v1, 0x0

    .line 807
    .local v1, "retValue":I
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getGsmSignalLevel(I)I

    move-result v0

    .line 808
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 810
    :pswitch_0
    const v1, 0x7f0202db

    .line 811
    goto :goto_0

    .line 813
    :pswitch_1
    const v1, 0x7f020319

    .line 814
    goto :goto_0

    .line 816
    :pswitch_2
    const v1, 0x7f02035b

    .line 817
    goto :goto_0

    .line 819
    :pswitch_3
    const v1, 0x7f02039d

    .line 820
    goto :goto_0

    .line 822
    :pswitch_4
    const v1, 0x7f0203df

    .line 823
    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPhoneId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 442
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 443
    .local v0, "phoneId":I
    return v0
.end method

.method private isCdmaDataOnlyMode(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 736
    iget v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    if-eq v4, v3, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v2

    .line 739
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v4, :cond_0

    .line 742
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 743
    .local v0, "dataType":I
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v4, p1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v1

    .line 744
    .local v1, "voiceType":I
    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    :cond_2
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 798
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mRoaming:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mRoaming:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private setWifiActivityVisible(Z)V
    .locals 4
    .param p1, "toShow"    # Z

    .prologue
    const/16 v3, 0x8

    .line 987
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    if-eqz p1, :cond_2

    .line 989
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 994
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private show1xOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 774
    iget v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v1

    .line 777
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 780
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 781
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    .line 782
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 783
    .local v1, "ret":Z
    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 785
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showBothDataAndVoice(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 712
    iget v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v1

    .line 716
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    aget v3, v3, p1

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 724
    const/4 v1, 0x0

    .line 725
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 726
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    .line 727
    .local v2, "voiceType":I
    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 730
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDataAndVoice()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 751
    iget v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v1

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 757
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getDataNetworkType(I)I

    move-result v0

    .line 758
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getVoiceNetworkType(I)I

    move-result v2

    .line 759
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 760
    .local v1, "ret":Z
    if-eq v0, v5, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 768
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showMobileActivity()Z
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCdma()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 676
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 684
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    :goto_1
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateData(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDataVoice(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobile(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 589
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 593
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 594
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 597
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v4, v4, p1

    if-eqz v4, :cond_1

    .line 598
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    :try_start_0
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "simState":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "cardState":[Ljava/lang/String;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-lt v4, p1, :cond_2

    const/4 v2, 0x1

    .line 611
    .local v2, "isPhoneStateRetrieved":Z
    :cond_2
    if-eqz v2, :cond_0

    const-string v4, "ABSENT"

    aget-object v5, v0, p1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    if-nez p1, :cond_3

    .line 613
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimCardOneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    :goto_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    .end local v0    # "cardState":[Ljava/lang/String;
    .end local v2    # "isPhoneStateRetrieved":Z
    .end local v3    # "simState":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 615
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cardState":[Ljava/lang/String;
    .restart local v2    # "isPhoneStateRetrieved":Z
    .restart local v3    # "simState":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimCardTwoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateMobileIconGroup()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 632
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getDefaultPhoneId()I

    move-result v0

    .line 414
    .local v0, "defaultPhoneId":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 228
    const v1, 0x7f0f00c4

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 230
    const v1, 0x7f0f00c5

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 231
    const v1, 0x7f0f00c6

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 232
    const v1, 0x7f0f00c7

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 233
    const v1, 0x7f0f00d3

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 234
    const v1, 0x7f0f00e8

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 238
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 239
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 240
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 241
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 243
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 244
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 246
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 248
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalDataResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 250
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoiceResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 254
    :cond_0
    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 255
    const v1, 0x7f0f00cb

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 256
    const v1, 0x7f0f00cc

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 257
    const v1, 0x7f0f00cd

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 259
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 260
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->apply(I)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 267
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 268
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 269
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 270
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 273
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 274
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 275
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 276
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 277
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 278
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 279
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 280
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 281
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 284
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 285
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 286
    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 288
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 289
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 448
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 450
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 452
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 459
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 462
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 463
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    .line 466
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    :cond_4
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 469
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    :cond_5
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 472
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->apply(I)V

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_7
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView$1;-><init>(Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 0
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 1001
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 2
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 403
    iput p2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 405
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->apply(I)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "roaming"    # Z
    .param p8, "phoneId"    # I
    .param p9, "noSimIcon"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 323
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p8

    .line 324
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p8

    .line 325
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p3, v0, p8

    .line 326
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p8

    .line 327
    iput-object p6, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput p9, v0, p8

    .line 329
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mRoaming:[Z

    aput-boolean p7, v0, p8

    .line 331
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->showMobileActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v0, p8

    .line 333
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v0, p8

    .line 339
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    if-ne v0, v1, :cond_8

    .line 340
    if-nez p8, :cond_7

    .line 341
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->showDataAndVoice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 343
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 344
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    .line 346
    iput p2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    .line 347
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getCdma2gId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    .line 349
    invoke-direct {p0, p8}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->isCdmaDataOnlyMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 351
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 352
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p8

    .line 397
    :cond_0
    :goto_1
    invoke-direct {p0, p8}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->apply(I)V

    .line 398
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v0, p8

    .line 336
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput p3, v0, p8

    .line 337
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, p8

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 354
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->show1xOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 357
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 358
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    .line 360
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 363
    :cond_5
    iput p2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 366
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p8

    goto :goto_1

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, p8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v0, v0, p8

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p8

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getCdmaRoamId(I)I

    move-result v1

    aput v1, v0, p8

    goto :goto_1

    .line 378
    :cond_8
    iget v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 379
    invoke-direct {p0, p8}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->showBothDataAndVoice(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p8}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, p8

    .line 382
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v1, v0, p8

    .line 383
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aput p2, v0, p8

    .line 384
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    invoke-direct {p0, p8}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v1

    aput v1, v0, p8

    goto/16 :goto_1

    .line 387
    :cond_9
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p8

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v1

    aput v1, v0, p8

    .line 388
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p8

    goto/16 :goto_1

    .line 391
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 392
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 394
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p8

    goto/16 :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    .line 213
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V
    .locals 1
    .param p1, "sc"    # Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .line 219
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    .line 221
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 310
    iput p3, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 311
    iput p2, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 312
    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/MSimSignalClusterView;->apply(I)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method
