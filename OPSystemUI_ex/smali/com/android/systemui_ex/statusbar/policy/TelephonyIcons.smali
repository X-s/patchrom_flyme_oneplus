.class Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;
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

.field static mSelectedDataTypeDesc:[Ljava/lang/String;

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

    .line 33
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 46
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 59
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 72
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    .line 77
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 82
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 93
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    .line 98
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 109
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    .line 114
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 125
    new-array v0, v2, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    .line 131
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 142
    new-array v0, v2, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    .line 149
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 160
    new-array v0, v2, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    .line 166
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 177
    new-array v0, v2, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    .line 183
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 194
    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    .line 251
    sput-boolean v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->isInitiated:Z

    return-void

    .line 33
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

    .line 46
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

    .line 59
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

    .line 72
    :array_6
    .array-data 4
        0x7f020110
        0x7f020110
    .end array-data

    .line 82
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

    .line 93
    :array_9
    .array-data 4
        0x7f02010a
        0x7f02010a
    .end array-data

    .line 98
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

    .line 109
    :array_c
    .array-data 4
        0x7f020100
        0x7f020100
    .end array-data

    .line 114
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

    .line 125
    :array_f
    .array-data 4
        0x7f020104
        0x7f020104
    .end array-data

    .line 131
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

    .line 142
    :array_12
    .array-data 4
        0x7f02010b
        0x7f02010b
    .end array-data

    .line 149
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

    .line 160
    :array_15
    .array-data 4
        0x7f0200fd
        0x7f0200fd
    .end array-data

    .line 166
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

    .line 177
    :array_18
    .array-data 4
        0x7f020102
        0x7f020102
    .end array-data

    .line 183
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

    .line 194
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
    .line 552
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v0

    return v0
.end method

.method static getDataActivity(II)I
    .locals 7
    .param p0, "sub"    # I
    .param p1, "activity"    # I

    .prologue
    const/4 v6, 0x0

    .line 557
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    aget-object v4, v4, p0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "dataActivityArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v4, v4, p0

    aget-object v4, v0, v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "selectedTypeArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v3, v1, p1

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method static getDataTypeDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method static getDataTypeDesc(I)Ljava/lang/String;
    .locals 1
    .param p0, "sub"    # I

    .prologue
    .line 548
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method static getDataTypeIcon()I
    .locals 2

    .prologue
    .line 536
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getDataTypeIcon(I)I
    .locals 1
    .param p0, "sub"    # I

    .prologue
    .line 540
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getNoSimIcon()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getNoSimIcon(I)I

    move-result v0

    return v0
.end method

.method static getNoSimIcon(I)I
    .locals 5
    .param p0, "sub"    # I

    .prologue
    .line 331
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    .line 334
    :cond_0
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 336
    .local v1, "resName":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "resId":I
    goto :goto_0
.end method

.method static getQSDataTypeIcon()I
    .locals 2

    .prologue
    .line 528
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getQSDataTypeIcon(I)I
    .locals 1
    .param p0, "sub"    # I

    .prologue
    .line 532
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getSignalNullIcon()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v0

    return v0
.end method

.method static getSignalNullIcon(I)I
    .locals 5
    .param p0, "sub"    # I

    .prologue
    .line 345
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    .line 348
    :cond_0
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 350
    .local v1, "resName":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "resId":I
    goto :goto_0
.end method

.method static getSignalStrengthDes(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSignalStrengthDes(II)Ljava/lang/String;
    .locals 1
    .param p0, "sub"    # I
    .param p1, "level"    # I

    .prologue
    .line 613
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method static getSignalStrengthIcon(IIIZ)I
    .locals 11
    .param p0, "sub"    # I
    .param p1, "inetCondition"    # I
    .param p2, "level"    # I
    .param p3, "isRoaming"    # Z

    .prologue
    const/4 v10, 0x0

    .line 573
    const-string v4, "TelephonyIcons"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSignalStrengthIcon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sub=%d, inetCondition=%d, level=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-nez p3, :cond_1

    .line 580
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->isTwoSimInserted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 581
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "tmpArray":[Ljava/lang/String;
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v6, v3, p0

    const-string v7, "com.android.systemui"

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 599
    .end local v3    # "tmpArray":[Ljava/lang/String;
    .local v2, "signalStrengthArray":[Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    aget v6, v6, p0

    aget-object v6, v2, v6

    const-string v7, "com.android.systemui"

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "selectedTypeArray":[Ljava/lang/String;
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v6, v1, p1

    const-string v7, "com.android.systemui"

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "inetArray":[Ljava/lang/String;
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p2

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 585
    .end local v0    # "inetArray":[Ljava/lang/String;
    .end local v1    # "selectedTypeArray":[Ljava/lang/String;
    .end local v2    # "signalStrengthArray":[Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    aget-object v6, v6, p0

    const-string v7, "com.android.systemui"

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "signalStrengthArray":[Ljava/lang/String;
    goto :goto_0

    .line 589
    .end local v2    # "signalStrengthArray":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->isTwoSimInserted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 590
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 591
    .restart local v3    # "tmpArray":[Ljava/lang/String;
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v6, v3, p0

    const-string v7, "com.android.systemui"

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 593
    .restart local v2    # "signalStrengthArray":[Ljava/lang/String;
    goto :goto_0

    .line 594
    .end local v2    # "signalStrengthArray":[Ljava/lang/String;
    .end local v3    # "tmpArray":[Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    aget-object v6, v6, p0

    const-string v7, "com.android.systemui"

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

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
    .line 567
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalStrengthIcon(IIIZ)I

    move-result v0

    return v0
.end method

.method static initAll(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 254
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->isInitiated:Z

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "TelephonyIcons"

    const-string v2, "initAll, already initiated!"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 261
    :try_start_0
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    .line 263
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    .line 265
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    .line 267
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    .line 269
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    .line 272
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 274
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0700dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    .line 276
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0700de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    .line 278
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    .line 280
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    .line 282
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 305
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    .line 307
    :cond_1
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 309
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    .line 311
    :cond_2
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 313
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    .line 315
    :cond_3
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 317
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    .line 319
    :cond_4
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_5

    .line 321
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    .line 323
    :cond_5
    sput-boolean v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->isInitiated:Z

    goto/16 :goto_0

    .line 285
    :cond_6
    :try_start_1
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    .line 287
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    .line 289
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    .line 291
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    .line 293
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 299
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

    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static isTwoSimInserted()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 623
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 625
    .local v1, "numOfSim":I
    if-gt v1, v3, :cond_0

    .line 638
    :goto_0
    return v4

    .line 629
    :cond_0
    new-array v2, v1, [Z

    .line 630
    .local v2, "sim":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 631
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 632
    aput-boolean v4, v2, v0

    .line 630
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :cond_1
    aput-boolean v3, v2, v0

    goto :goto_2

    .line 638
    :cond_2
    aget-boolean v5, v2, v4

    if-eqz v5, :cond_3

    aget-boolean v5, v2, v3

    if-eqz v5, :cond_3

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
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
    .line 364
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

    invoke-static {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    aget-object v2, v3, p0

    .line 372
    .local v2, "resName":Ljava/lang/String;
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v4, 0x0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 373
    .local v1, "resId":I
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "dataTypeArray":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 518
    :pswitch_0
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 519
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 520
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 521
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, p0

    .line 522
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 525
    :goto_0
    return-void

    .line 377
    :pswitch_1
    if-nez p2, :cond_0

    .line 378
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 380
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 381
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 382
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 383
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto :goto_0

    .line 389
    :cond_0
    :pswitch_2
    if-nez p2, :cond_1

    .line 390
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 392
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 393
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 394
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    .line 395
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    goto :goto_0

    .line 402
    :cond_1
    :pswitch_3
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 403
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 405
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 406
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 407
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    goto :goto_0

    .line 412
    :pswitch_4
    if-eqz p4, :cond_2

    .line 413
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    .line 414
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 416
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 417
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 418
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    goto/16 :goto_0

    .line 420
    :cond_2
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 421
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 423
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 424
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 425
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 430
    :pswitch_5
    if-eqz p4, :cond_3

    .line 431
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    .line 432
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 434
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 435
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 436
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    goto/16 :goto_0

    .line 438
    :cond_3
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 439
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 441
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 442
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 443
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 448
    :pswitch_6
    if-nez p2, :cond_4

    .line 449
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 450
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 452
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 453
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 454
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    goto/16 :goto_0

    .line 460
    :cond_4
    :pswitch_7
    if-nez p2, :cond_5

    .line 461
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 462
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 464
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 465
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 466
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    goto/16 :goto_0

    .line 475
    :cond_5
    :pswitch_8
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 476
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 478
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 479
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 480
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 483
    :pswitch_9
    if-eqz p3, :cond_6

    .line 484
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    .line 485
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 487
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 488
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 489
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    .line 491
    :cond_6
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x9

    aput v4, v3, p0

    .line 492
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 494
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 495
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 496
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    .line 501
    :pswitch_a
    if-nez p2, :cond_7

    .line 502
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    .line 503
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 505
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 506
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 507
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto/16 :goto_0

    .line 509
    :cond_7
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 510
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 512
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 513
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 514
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 375
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
    .line 357
    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 359
    return-void
.end method
