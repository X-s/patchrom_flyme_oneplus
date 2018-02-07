.class Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "PremiumSmsAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/PremiumSmsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PremiumSmsPreference"
.end annotation


# instance fields
.field private final mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

.field final synthetic this$0:Lcom/android/settings_ex/applications/PremiumSmsAccess;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings_ex/applications/PremiumSmsAccess;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/PremiumSmsAccess;
    .param p2, "appEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->this$0:Lcom/android/settings_ex/applications/PremiumSmsAccess;

    .line 170
    invoke-direct {p0, p3}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 171
    iput-object p2, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, p3}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_0
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->setEntries(I)V

    .line 178
    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 179
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 180
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 181
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->getCurrentValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->setValue(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "%s"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method private getCurrentValue()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings_ex/applications/AppStateSmsPremBridge$SmsState;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/applications/AppStateSmsPremBridge$SmsState;

    iget v0, v0, Lcom/android/settings_ex/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    .line 188
    :goto_0
    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference$1;-><init>(Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 194
    return-void
.end method
