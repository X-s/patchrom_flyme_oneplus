.class Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessPreference"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

.field private final mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

.field final synthetic this$0:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;

    .line 232
    invoke-direct {p0, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 233
    iput-object p3, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_0
    return-void
.end method

.method private setState()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setChecked(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    .line 276
    const v0, 0x7f0e1022

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->-get1(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;)Lcom/android/settings_ex/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->addListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 243
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference$1;-><init>(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_0
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    .line 304
    const/4 v0, 0x4

    .line 302
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 289
    return-void

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 321
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_0

    .line 260
    const-class v0, Lcom/android/settings_ex/datausage/AppDataUsage;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0f17

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;

    .line 263
    iget-object v3, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 260
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings_ex/SettingsPreferenceFragment;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 255
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    goto :goto_0
.end method

.method public onDataSaverChanged(Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 309
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->-get1(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;)Lcom/android/settings_ex/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->remListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 251
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 249
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 313
    :cond_0
    return-void
.end method

.method public reuse()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->notifyChanged()V

    .line 283
    return-void
.end method
