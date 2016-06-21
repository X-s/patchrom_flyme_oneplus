.class Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_LTE:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final QS_DATA_1X:[I

.field static final QS_DATA_3G:[I

.field static final QS_DATA_4G:[I

.field static final QS_DATA_E:[I

.field static final QS_DATA_G:[I

.field static final QS_DATA_H:[I

.field static final QS_DATA_LTE:[I

.field static final QS_DATA_R:[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field private static isInitiated:Z

.field static mDataActivityArray:[Ljava/lang/String;

.field static mDataTypeArray:[Ljava/lang/String;

.field static mDataTypeDescriptionArray:[Ljava/lang/String;

.field static mDataTypeGenerationArray:[Ljava/lang/String;

.field static mDataTypeGenerationDescArray:[Ljava/lang/String;

.field static mNoSimArray:[Ljava/lang/String;

.field private static mRes:Landroid/content/res/Resources;

.field static mSelectedDataActivityIndex:[I

.field static mSelectedDataTypeDesc:Ljava/lang/String;

.field static mSelectedDataTypeIcon:[I

.field static mSelectedQSDataTypeIcon:[I

.field static mSelectedSignalStreagthIndex:[I

.field static mSignalNullArray:[Ljava/lang/String;

.field static mSignalStrengthArray:[Ljava/lang/String;

.field static mSignalStrengthDesc:[Ljava/lang/String;

.field static mSignalStrengthRoamingArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 32
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 45
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 58
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 71
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_R:[I

    .line 76
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 81
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_G:[[I

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_G:[I

    .line 97
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_3G:[[I

    .line 108
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_3G:[I

    .line 113
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_E:[[I

    .line 124
    new-array v0, v2, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_E:[I

    .line 130
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_H:[[I

    .line 141
    new-array v0, v2, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_H:[I

    .line 148
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_1X:[[I

    .line 159
    new-array v0, v2, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_1X:[I

    .line 165
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_4G:[[I

    .line 176
    new-array v0, v2, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_4G:[I

    .line 182
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 193
    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_LTE:[I

    .line 250
    sput-boolean v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->isInitiated:Z

    return-void

    .line 32
    :array_0
    .array-data 4
        0x7f0202a9
        0x7f0202e7
        0x7f020329
        0x7f02036b
        0x7f0203ad
    .end array-data

    :array_1
    .array-data 4
        0x7f0202cc
        0x7f02030a
        0x7f02034c
        0x7f02038e
        0x7f0203d0
    .end array-data

    .line 45
    :array_2
    .array-data 4
        0x7f0200fb
        0x7f0200fc
        0x7f0200fe
        0x7f0200ff
        0x7f020101
    .end array-data

    :array_3
    .array-data 4
        0x7f020105
        0x7f020106
        0x7f020107
        0x7f020108
        0x7f020109
    .end array-data

    .line 58
    :array_4
    .array-data 4
        0x7f0202a9
        0x7f0202e7
        0x7f020329
        0x7f02036b
        0x7f0203ad
    .end array-data

    :array_5
    .array-data 4
        0x7f0202cc
        0x7f02030a
        0x7f02034c
        0x7f02038e
        0x7f0203d0
    .end array-data

    .line 71
    :array_6
    .array-data 4
        0x7f020110
        0x7f020110
    .end array-data

    .line 81
    :array_7
    .array-data 4
        0x7f02021d
        0x7f02021d
        0x7f02021d
        0x7f02021d
    .end array-data

    :array_8
    .array-data 4
        0x7f02021d
        0x7f02021d
        0x7f02021d
        0x7f02021d
    .end array-data

    .line 92
    :array_9
    .array-data 4
        0x7f02010a
        0x7f02010a
    .end array-data

    .line 97
    :array_a
    .array-data 4
        0x7f02021a
        0x7f02021a
        0x7f02021a
        0x7f02021a
    .end array-data

    :array_b
    .array-data 4
        0x7f02021a
        0x7f02021a
        0x7f02021a
        0x7f02021a
    .end array-data

    .line 108
    :array_c
    .array-data 4
        0x7f020100
        0x7f020100
    .end array-data

    .line 113
    :array_d
    .array-data 4
        0x7f02021c
        0x7f02021c
        0x7f02021c
        0x7f02021c
    .end array-data

    :array_e
    .array-data 4
        0x7f02021c
        0x7f02021c
        0x7f02021c
        0x7f02021c
    .end array-data

    .line 124
    :array_f
    .array-data 4
        0x7f020104
        0x7f020104
    .end array-data

    .line 130
    :array_10
    .array-data 4
        0x7f02021e
        0x7f02021e
        0x7f02021e
        0x7f02021e
    .end array-data

    :array_11
    .array-data 4
        0x7f02021e
        0x7f02021e
        0x7f02021e
        0x7f02021e
    .end array-data

    .line 141
    :array_12
    .array-data 4
        0x7f02010b
        0x7f02010b
    .end array-data

    .line 148
    :array_13
    .array-data 4
        0x7f020219
        0x7f020219
        0x7f020219
        0x7f020219
    .end array-data

    :array_14
    .array-data 4
        0x7f020219
        0x7f020219
        0x7f020219
        0x7f020219
    .end array-data

    .line 159
    :array_15
    .array-data 4
        0x7f0200fd
        0x7f0200fd
    .end array-data

    .line 165
    :array_16
    .array-data 4
        0x7f02021b
        0x7f02021b
        0x7f02021b
        0x7f02021b
    .end array-data

    :array_17
    .array-data 4
        0x7f02021b
        0x7f02021b
        0x7f02021b
        0x7f02021b
    .end array-data

    .line 176
    :array_18
    .array-data 4
        0x7f020102
        0x7f020102
    .end array-data

    .line 182
    :array_19
    .array-data 4
        0x7f020220
        0x7f020220
        0x7f020220
        0x7f020220
    .end array-data

    :array_1a
    .array-data 4
        0x7f020220
        0x7f020220
        0x7f020220
        0x7f020220
    .end array-data

    .line 193
    :array_1b
    .array-data 4
        0x7f02010d
        0x7f02010d
    .end array-data
.end method

.method static getDataActivity(I)I
    .locals 1
    .param p0, "activity"    # I

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v0

    return v0
.end method

.method static getDataActivity(II)I
    .locals 7
    .param p0, "sub"    # I
    .param p1, "activity"    # I

    .prologue
    const/4 v6, 0x0

    .line 532
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    aget-object v4, v4, p0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "dataActivityArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v4, v4, p0

    aget-object v4, v0, v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "selectedTypeArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v3, v1, p1

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method static getDataTypeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    return-object v0
.end method

.method static getDataTypeIcon()I
    .locals 2

    .prologue
    .line 515
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getNoSimIcon()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getNoSimIcon(I)I

    move-result v0

    return v0
.end method

.method static getNoSimIcon(I)I
    .locals 5
    .param p0, "sub"    # I

    .prologue
    .line 310
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    .line 313
    :cond_0
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 315
    .local v1, "resName":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "resId":I
    goto :goto_0
.end method

.method static getQSDataTypeIcon()I
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getSignalNullIcon()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v0

    return v0
.end method

.method static getSignalNullIcon(I)I
    .locals 5
    .param p0, "sub"    # I

    .prologue
    .line 324
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    .line 327
    :cond_0
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 329
    .local v1, "resName":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, "resId":I
    goto :goto_0
.end method

.method static getSignalStrengthDes(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalStrengthDes(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSignalStrengthDes(II)Ljava/lang/String;
    .locals 1
    .param p0, "sub"    # I
    .param p1, "level"    # I

    .prologue
    .line 576
    sget-object v0, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method static getSignalStrengthIcon(IIIZ)I
    .locals 10
    .param p0, "sub"    # I
    .param p1, "inetCondition"    # I
    .param p2, "level"    # I
    .param p3, "isRoaming"    # Z

    .prologue
    const/4 v9, 0x0

    .line 548
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSignalStrengthIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sub=%d, inetCondition=%d, level=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    if-nez p3, :cond_0

    .line 555
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    aget-object v5, v5, p0

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "signalStrengthArray":[Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    aget v5, v5, p0

    aget-object v5, v2, v5

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "selectedTypeArray":[Ljava/lang/String;
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v1, p1

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "inetArray":[Ljava/lang/String;
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v4, v0, p2

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 558
    .end local v0    # "inetArray":[Ljava/lang/String;
    .end local v1    # "selectedTypeArray":[Ljava/lang/String;
    .end local v2    # "signalStrengthArray":[Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    aget-object v5, v5, p0

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "signalStrengthArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method static getSignalStrengthIcon(IIZ)I
    .locals 1
    .param p0, "inetCondition"    # I
    .param p1, "level"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalStrengthIcon(IIIZ)I

    move-result v0

    return v0
.end method

.method static initAll(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    sget-boolean v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->isInitiated:Z

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "TelephonyIcons"

    const-string v2, "initAll, already initiated!"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 260
    :try_start_0
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    .line 262
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    .line 264
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    .line 266
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    .line 268
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    .line 270
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    .line 272
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    .line 274
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    .line 276
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    .line 278
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 288
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    .line 290
    :cond_1
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 292
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    .line 294
    :cond_2
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 296
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    .line 298
    :cond_3
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 300
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    .line 302
    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->isInitiated:Z

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->isInitiated:Z

    .line 282
    const-string v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAll, exception happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method static updateDataType(IIZZZI)V
    .locals 9
    .param p0, "sub"    # I
    .param p1, "type"    # I
    .param p2, "showAtLeast3G"    # Z
    .param p3, "show4GforLte"    # Z
    .param p4, "hspaDistinguishable"    # Z
    .param p5, "inetCondition"    # I

    .prologue
    .line 343
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sub=%d, type=%d, inetCondition=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showAtLeast3G="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show4GforLte="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspaDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    aget-object v2, v3, p0

    .line 351
    .local v2, "resName":Ljava/lang/String;
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v4, 0x0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 352
    .local v1, "resId":I
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "dataTypeArray":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 497
    :pswitch_0
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 498
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 499
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 500
    const-string v3, ""

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 501
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 504
    :goto_0
    return-void

    .line 356
    :pswitch_1
    if-nez p2, :cond_0

    .line 357
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 359
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 360
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 361
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 362
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto :goto_0

    .line 368
    :cond_0
    :pswitch_2
    if-nez p2, :cond_1

    .line 369
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 371
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_E:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 372
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 373
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    .line 374
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    goto :goto_0

    .line 381
    :cond_1
    :pswitch_3
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 382
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 384
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 385
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 386
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    goto :goto_0

    .line 391
    :pswitch_4
    if-eqz p4, :cond_2

    .line 392
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    .line 393
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 395
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 396
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 397
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    goto/16 :goto_0

    .line 399
    :cond_2
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 400
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 402
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 403
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 404
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 409
    :pswitch_5
    if-eqz p4, :cond_3

    .line 410
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    .line 411
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 413
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 414
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 415
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    goto/16 :goto_0

    .line 417
    :cond_3
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 418
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 420
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 421
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 422
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 427
    :pswitch_6
    if-nez p2, :cond_4

    .line 428
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 429
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 431
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 432
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 433
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    goto/16 :goto_0

    .line 439
    :cond_4
    :pswitch_7
    if-nez p2, :cond_5

    .line 440
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 441
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 443
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 444
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 445
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    goto/16 :goto_0

    .line 454
    :cond_5
    :pswitch_8
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 455
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 457
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 458
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 459
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 462
    :pswitch_9
    if-eqz p3, :cond_6

    .line 463
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    .line 464
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 466
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 467
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 468
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    .line 470
    :cond_6
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x9

    aput v4, v3, p0

    .line 471
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 473
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_LTE:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 474
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 475
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    .line 480
    :pswitch_a
    if-nez p2, :cond_7

    .line 481
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    .line 482
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 484
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 485
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 486
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto/16 :goto_0

    .line 488
    :cond_7
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 489
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 491
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 492
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 493
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method

.method static updateDataType(IZZZI)V
    .locals 6
    .param p0, "type"    # I
    .param p1, "showAtLeast3G"    # Z
    .param p2, "show4GforLte"    # Z
    .param p3, "hspaDistinguishable"    # Z
    .param p4, "inetCondition"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 338
    return-void
.end method
