.class public Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
.super Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;
.source "QtiApnProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    }
.end annotation


# static fields
.field private static final DATA_PROFILE_OMH_PRIORITY_HIGHEST:I = 0x0

.field private static final DATA_PROFILE_OMH_PRIORITY_LOWEST:I = 0xff


# instance fields
.field private mApnProfileModem:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field private mPriority:I

.field private mServiceTypeMasks:I


# direct methods
.method public constructor <init>(II)V
    .locals 29
    .param p1, "profileId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 92
    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    .line 94
    const/4 v2, 0x0

    new-array v15, v2, [Ljava/lang/String;

    const-string/jumbo v16, "IP"

    const-string/jumbo v17, "IP"

    .line 95
    const-string/jumbo v27, ""

    const-string/jumbo v28, ""

    .line 92
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 93
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    .line 94
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 95
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v2, p0

    move/from16 v21, p1

    .line 92
    invoke-direct/range {v2 .. v28}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    .line 84
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    .line 96
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    .line 86
    return-void
.end method

.method private isValidPriority(I)Z
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 159
    if-ltz p1, :cond_0

    .line 160
    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 159
    :cond_0
    return v0
.end method


# virtual methods
.method public addServiceType(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V
    .locals 8
    .param p1, "modemProfile"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .prologue
    const/4 v3, 0x0

    .line 172
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    invoke-virtual {p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v4

    or-int/2addr v2, v4

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "serviceTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->values()[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 177
    .local v0, "apt":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "apt":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->types:[Ljava/lang/String;

    .line 171
    return-void
.end method

.method public canHandleType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 101
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getApnProfileTypeModem(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getApnProfileType()Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method

.method public getApnProfileTypeModem()Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mApnProfileModem:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->profileId:I

    return v0
.end method

.method public isPriorityHigher(I)Z
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isValidPriority(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    if-ge v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPriorityLower(I)Z
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isValidPriority(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    if-le v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidPriority()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setApnProfileTypeModem(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V
    .locals 0
    .param p1, "modemProfile"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mApnProfileModem:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 131
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    .line 139
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "ApnProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->profileId:I

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string/jumbo v2, ", "

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
