.class public Lcom/android/settings_ex/users/UserPreference;
.super Lcom/android/settings_exlib/RestrictedPreference;
.source "UserPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/users/UserPreference$1;
    }
.end annotation


# static fields
.field private static final ALPHA_DISABLED:I = 0x66

.field private static final ALPHA_ENABLED:I = 0xff

.field static final DELETE_ID:I = 0x7f1102ba

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

.field static final SETTINGS_ID:I = 0x7f1102b8

.field public static final USERID_GUEST_DEFAULTS:I = -0xb

.field public static final USERID_UNKNOWN:I = -0xa


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/users/UserPreference;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserPreference;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/settings_ex/users/UserPreference$1;

    invoke-direct {v0}, Lcom/android/settings_ex/users/UserPreference$1;-><init>()V

    .line 42
    sput-object v0, Lcom/android/settings_ex/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 65
    const/16 v3, -0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 64
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
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    .line 60
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    .line 72
    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 73
    :cond_0
    const v0, 0x7f04016d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 75
    :cond_1
    iput-object p5, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 76
    iput-object p4, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 77
    iput p3, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserPreference;->useAdminDisabledSummary(Z)V

    .line 70
    return-void
.end method

.method private dimIcon(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    return-void

    .line 84
    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method

.method private getSerialNumber()I
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 138
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    .line 140
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 141
    const v0, 0x7fffffff

    return v0

    .line 142
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    .line 143
    const v0, 0x7ffffffe

    return v0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 146
    iget v1, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    .line 145
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    .line 147
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    return v0

    .line 149
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    return v0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 12
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 93
    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 94
    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->isDisabledByAdmin()Z

    move-result v2

    .line 97
    .local v2, "disabledByAdmin":Z
    invoke-direct {p0, v2}, Lcom/android/settings_ex/users/UserPreference;->dimIcon(Z)V

    .line 98
    const v7, 0x7f1102b6

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 99
    .local v6, "userDeleteWidget":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 100
    if-eqz v2, :cond_4

    move v7, v8

    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    if-nez v2, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "user"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 104
    .local v5, "um":Landroid/os/UserManager;
    const v7, 0x7f1102b9

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "deleteDividerView":Landroid/view/View;
    const v7, 0x7f1102b7

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 106
    .local v3, "manageDividerView":Landroid/view/View;
    const v7, 0x7f1102ba

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "deleteView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 108
    iget-object v7, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 110
    const-string/jumbo v10, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 109
    invoke-static {v7, v10, v11}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    :cond_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_2
    :goto_1
    const v7, 0x7f1102b8

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 121
    .local v4, "manageView":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 122
    iget-object v7, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_7

    .line 123
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v7, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-nez v7, :cond_6

    :goto_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v7, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 90
    .end local v0    # "deleteDividerView":Landroid/view/View;
    .end local v1    # "deleteView":Landroid/view/View;
    .end local v3    # "manageDividerView":Landroid/view/View;
    .end local v4    # "manageView":Landroid/widget/ImageView;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v7, v9

    .line 100
    goto :goto_0

    .line 111
    .restart local v0    # "deleteDividerView":Landroid/view/View;
    .restart local v1    # "deleteView":Landroid/view/View;
    .restart local v3    # "manageDividerView":Landroid/view/View;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_5
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v7, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .restart local v4    # "manageView":Landroid/widget/ImageView;
    :cond_6
    move v9, v8

    .line 125
    goto :goto_2

    .line 129
    :cond_7
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
