.class public Lcom/oneplus/tuner/providers/OfficialEarphone;
.super Ljava/lang/Object;
.source "OfficialEarphone.java"


# static fields
.field private static mCtx:Landroid/content/Context;


# instance fields
.field private mBrand:Ljava/lang/String;

.field private mConfigNum:I

.field private mLogo:I

.field private mModel:Ljava/lang/String;

.field private mTypeId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mBrand:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mModel:Ljava/lang/String;

    .line 79
    iput v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mLogo:I

    .line 80
    iput v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mConfigNum:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mTypeId:J

    .line 82
    return-void
.end method

.method private setLogo(Ljava/lang/String;)V
    .locals 3
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "logo":I
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c056b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const v0, 0x7f02015f

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->setLogo(I)V

    .line 213
    return-void

    .line 130
    :cond_1
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c056c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const v0, 0x7f020160

    goto :goto_0

    .line 133
    :cond_2
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c056d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    const v0, 0x7f020161

    goto :goto_0

    .line 136
    :cond_3
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c056e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    const v0, 0x7f020162

    goto :goto_0

    .line 139
    :cond_4
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c056f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    const v0, 0x7f020163

    goto :goto_0

    .line 142
    :cond_5
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0570

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    const v0, 0x7f020164

    goto :goto_0

    .line 145
    :cond_6
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0571

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    const v0, 0x7f020165

    goto/16 :goto_0

    .line 148
    :cond_7
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0572

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    const v0, 0x7f020166

    goto/16 :goto_0

    .line 151
    :cond_8
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0573

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 153
    const v0, 0x7f020167

    goto/16 :goto_0

    .line 154
    :cond_9
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0574

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 156
    const v0, 0x7f020168

    goto/16 :goto_0

    .line 157
    :cond_a
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0575

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 159
    const v0, 0x7f020169

    goto/16 :goto_0

    .line 160
    :cond_b
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0576

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 162
    const v0, 0x7f02016a

    goto/16 :goto_0

    .line 163
    :cond_c
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0577

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 165
    const v0, 0x7f02016b

    goto/16 :goto_0

    .line 166
    :cond_d
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0578

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 168
    const v0, 0x7f02016c

    goto/16 :goto_0

    .line 169
    :cond_e
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0579

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 171
    const v0, 0x7f02016d

    goto/16 :goto_0

    .line 172
    :cond_f
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c057a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 174
    const v0, 0x7f02016e

    goto/16 :goto_0

    .line 175
    :cond_10
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c057b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 177
    const v0, 0x7f02016f

    goto/16 :goto_0

    .line 178
    :cond_11
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c057c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 180
    const v0, 0x7f020170

    goto/16 :goto_0

    .line 181
    :cond_12
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c057d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 183
    const v0, 0x7f020171

    goto/16 :goto_0

    .line 184
    :cond_13
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c057e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 186
    const v0, 0x7f020172

    goto/16 :goto_0

    .line 187
    :cond_14
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c057f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 189
    const v0, 0x7f020173

    goto/16 :goto_0

    .line 190
    :cond_15
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0580

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 192
    const v0, 0x7f020174

    goto/16 :goto_0

    .line 193
    :cond_16
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0581

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 195
    const v0, 0x7f020175

    goto/16 :goto_0

    .line 196
    :cond_17
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0582

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 198
    const v0, 0x7f020176

    goto/16 :goto_0

    .line 199
    :cond_18
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0583

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 201
    const v0, 0x7f020177

    goto/16 :goto_0

    .line 202
    :cond_19
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0584

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 204
    const v0, 0x7f020178

    goto/16 :goto_0

    .line 205
    :cond_1a
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0585

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 207
    const v0, 0x7f020179

    goto/16 :goto_0

    .line 208
    :cond_1b
    sget-object v1, Lcom/oneplus/tuner/providers/OfficialEarphone;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0586

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const v0, 0x7f02017a

    goto/16 :goto_0
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigNum()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mConfigNum:I

    return v0
.end method

.method public getLogo()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mLogo:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mTypeId:J

    return-wide v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBrand"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mBrand:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/OfficialEarphone;->setLogo(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setConfigNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mConfigNum:I

    .line 115
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "mLogo"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mLogo:I

    .line 107
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mModel"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mModel:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setTypeId(J)V
    .locals 1
    .param p1, "typeId"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mTypeId:J

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "mBrand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", mModel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mTypeId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/oneplus/tuner/providers/OfficialEarphone;->mTypeId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
