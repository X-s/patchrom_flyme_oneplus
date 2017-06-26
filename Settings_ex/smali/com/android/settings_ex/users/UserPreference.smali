.class public Lcom/android/settings_ex/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# static fields
.field static final DELETE_ID:I = 0x7f1201ad

.field public static final SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field

.field static final SETTINGS_ID:I = 0x7f1201ab

.field public static final USERID_GUEST_DEFAULTS:I = -0xb

.field public static final USERID_UNKNOWN:I = -0xa


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/settings_ex/users/UserPreference$1;

    invoke-direct {v0}, Lcom/android/settings_ex/users/UserPreference$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 58
    const/16 v3, -0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "userId"    # I
    .param p4, "settingsListener"    # Landroid/view/View$OnClickListener;
    .param p5, "deleteListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    .line 53
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    .line 65
    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 66
    :cond_0
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 68
    :cond_1
    iput-object p5, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 69
    iput-object p4, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 70
    iput p3, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/users/UserPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/UserPreference;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserPreference;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method private getSerialNumber()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    .line 118
    :goto_0
    return v0

    .line 107
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    .line 109
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 110
    const v0, 0x7fffffff

    goto :goto_0

    .line 111
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    .line 112
    const v0, 0x7ffffffe

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    .line 116
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    goto :goto_0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 76
    .local v4, "um":Landroid/os/UserManager;
    const v5, 0x7f1201ac

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "deleteDividerView":Landroid/view/View;
    const v5, 0x7f1201aa

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "manageDividerView":Landroid/view/View;
    const v5, 0x7f1201ad

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "deleteView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 80
    iget-object v5, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_2

    const-string v5, "no_remove_user"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    iget-object v5, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    const v5, 0x7f1201ab

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "manageView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 91
    iget-object v5, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_3

    .line 92
    iget-object v5, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v5, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_1

    .line 95
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 103
    return-void

    .line 85
    .end local v3    # "manageView":Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 98
    .restart local v3    # "manageView":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
