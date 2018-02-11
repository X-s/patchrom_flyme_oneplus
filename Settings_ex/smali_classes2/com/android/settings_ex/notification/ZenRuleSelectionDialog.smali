.class public abstract Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$1;,
        Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$2;,
        Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$LoadIconTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final RULE_TYPE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/notification/ZenRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ZenRuleSelectionDialog"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/AlertDialog;

.field private mNm:Landroid/app/NotificationManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mRuleContainer:Landroid/widget/LinearLayout;

.field private final mServiceListing:Lcom/android/settings_ex/utils/ZenServiceListing;

.field private final mServiceListingCallback:Lcom/android/settings_ex/utils/ZenServiceListing$Callback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->RULE_TYPE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mNm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)Lcom/android/settings_ex/utils/ZenServiceListing;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings_ex/utils/ZenServiceListing;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)Lcom/android/settings_ex/utils/ZenServiceListing$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings_ex/utils/ZenServiceListing$Callback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;Ljava/util/Set;)V
    .locals 0
    .param p1, "externalRuleTypes"    # Ljava/util/Set;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->bindExternalRules(Ljava/util/Set;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettings;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->DEBUG:Z

    .line 185
    new-instance v0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$2;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$2;-><init>()V

    .line 184
    sput-object v0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->RULE_TYPE_COMPARATOR:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/utils/ZenServiceListing;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceListing"    # Lcom/android/settings_ex/utils/ZenServiceListing;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v1, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$1;-><init>(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings_ex/utils/ZenServiceListing$Callback;

    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    .line 65
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mNm:Landroid/app/NotificationManager;

    .line 66
    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings_ex/utils/ZenServiceListing;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040224

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f110402

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mRuleContainer:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings_ex/utils/ZenServiceListing;

    if-eqz v1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->defaultNewEvent()Lcom/android/settings_ex/notification/ZenRuleInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings_ex/notification/ZenRuleInfo;)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->defaultNewSchedule()Lcom/android/settings_ex/notification/ZenRuleInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings_ex/notification/ZenRuleInfo;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings_ex/utils/ZenServiceListing;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings_ex/utils/ZenServiceListing$Callback;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/utils/ZenServiceListing;->addZenCallback(Lcom/android/settings_ex/utils/ZenServiceListing$Callback;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings_ex/utils/ZenServiceListing;

    invoke-virtual {v1}, Lcom/android/settings_ex/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 77
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    const v2, 0x7f0e0ea3

    .line 77
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$3;-><init>(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 88
    const v2, 0x7f0e05c0

    .line 77
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 62
    return-void
.end method

.method private bindExternalRules(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings_ex/notification/ZenRuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "externalRuleTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings_ex/notification/ZenRuleInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/ZenRuleInfo;

    .line 161
    .local v0, "ri":Lcom/android/settings_ex/notification/ZenRuleInfo;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings_ex/notification/ZenRuleInfo;)V

    goto :goto_0

    .line 159
    .end local v0    # "ri":Lcom/android/settings_ex/notification/ZenRuleInfo;
    :cond_0
    return-void
.end method

.method private bindType(Lcom/android/settings_ex/notification/ZenRuleInfo;)V
    .locals 9
    .param p1, "ri"    # Lcom/android/settings_ex/notification/ZenRuleInfo;

    .prologue
    .line 101
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Lcom/android/settings_ex/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 102
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 103
    const v6, 0x7f040223

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 102
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 105
    .local v4, "v":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$LoadIconTask;

    const/high16 v5, 0x7f110000

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$LoadIconTask;-><init>(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;Landroid/widget/ImageView;)V

    .line 106
    .local v3, "task":Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$LoadIconTask;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    const v5, 0x7f110063

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/settings_ex/notification/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-boolean v5, p1, Lcom/android/settings_ex/notification/ZenRuleInfo;->isSystem:Z

    if-nez v5, :cond_0

    .line 109
    const v5, 0x7f110178

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, "subtitle":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    .end local v2    # "subtitle":Landroid/widget/TextView;
    :cond_0
    new-instance v5, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;

    invoke-direct {v5, p0, p1}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;-><init>(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;Lcom/android/settings_ex/notification/ZenRuleInfo;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mRuleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "task":Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$LoadIconTask;
    .end local v4    # "v":Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private defaultNewEvent()Lcom/android/settings_ex/notification/ZenRuleInfo;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 147
    .local v0, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 148
    const/4 v2, 0x0

    iput v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 149
    new-instance v1, Lcom/android/settings_ex/notification/ZenRuleInfo;

    invoke-direct {v1}, Lcom/android/settings_ex/notification/ZenRuleInfo;-><init>()V

    .line 150
    .local v1, "rt":Lcom/android/settings_ex/notification/ZenRuleInfo;
    const-string/jumbo v2, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    iput-object v2, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0eab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->title:Ljava/lang/String;

    .line 152
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 154
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 155
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->isSystem:Z

    .line 156
    return-object v1
.end method

.method private defaultNewSchedule()Lcom/android/settings_ex/notification/ZenRuleInfo;
    .locals 4

    .prologue
    .line 131
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 132
    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 133
    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 134
    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 135
    new-instance v0, Lcom/android/settings_ex/notification/ZenRuleInfo;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/ZenRuleInfo;-><init>()V

    .line 136
    .local v0, "rt":Lcom/android/settings_ex/notification/ZenRuleInfo;
    const-string/jumbo v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v0, Lcom/android/settings_ex/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0ea9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/ZenRuleInfo;->title:Ljava/lang/String;

    .line 138
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 139
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 140
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/ZenRuleInfo;->isSystem:Z

    .line 142
    return-object v0
.end method


# virtual methods
.method public abstract onExternalRuleSelected(Lcom/android/settings_ex/notification/ZenRuleInfo;)V
.end method

.method public abstract onSystemRuleSelected(Lcom/android/settings_ex/notification/ZenRuleInfo;)V
.end method

.method public show()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-void
.end method
