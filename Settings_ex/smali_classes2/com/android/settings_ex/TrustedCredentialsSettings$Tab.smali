.class final enum Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

.field private static final synthetic -com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

.field public static final enum SYSTEM:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mContentView:I

.field private final mExpandableList:I

.field private final mLabel:I

.field private final mPersonalList:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I

.field private final mWorkList:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mContentView:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mPersonalList:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mWorkList:I

    return v0
.end method

.method private static synthetic -getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->values()[Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .param p1, "service"    # Landroid/security/IKeyChainService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 95
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "SYSTEM"

    const-string/jumbo v3, "system"

    const/4 v2, 0x0

    .line 96
    const v4, 0x7f0e0cf4

    .line 97
    const v5, 0x7f110326

    .line 98
    const v6, 0x7f110327

    .line 99
    const v7, 0x7f110329

    .line 100
    const v8, 0x7f11032a

    .line 101
    const v9, 0x7f11032b

    .line 102
    const v10, 0x7f110328

    .line 103
    const/4 v11, 0x1

    .line 95
    invoke-direct/range {v0 .. v11}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .line 104
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "USER"

    const-string/jumbo v3, "user"

    const/4 v2, 0x1

    .line 105
    const v4, 0x7f0e0cf5

    .line 106
    const v5, 0x7f11032c

    .line 107
    const v6, 0x7f11032d

    .line 108
    const v7, 0x7f11032f

    .line 109
    const v8, 0x7f110330

    .line 110
    const v9, 0x7f110331

    .line 111
    const v10, 0x7f11032e

    .line 112
    const/4 v11, 0x0

    .line 104
    invoke-direct/range {v0 .. v11}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "personalList"    # I
    .param p8, "workList"    # I
    .param p9, "expandableList"    # I
    .param p10, "contentView"    # I
    .param p11, "withSwitch"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput-object p3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 127
    iput p4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 128
    iput p5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mView:I

    .line 129
    iput p6, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 130
    iput p7, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mPersonalList:I

    .line 131
    iput p8, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mWorkList:I

    .line 132
    iput p9, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 133
    iput p10, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mContentView:I

    .line 134
    iput-boolean p11, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mSwitch:Z

    .line 125
    return-void
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-static {}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_1
    return v0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
