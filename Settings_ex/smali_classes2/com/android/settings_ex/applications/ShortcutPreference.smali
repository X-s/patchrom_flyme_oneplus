.class public Lcom/android/settings_ex/applications/ShortcutPreference;
.super Landroid/support/v7/preference/Preference;
.source "ShortcutPreference.java"


# instance fields
.field private final mPrefKey:Ljava/lang/String;

.field private final mTarget:Ljava/lang/Class;

.field private final mTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Ljava/lang/Class;
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "prefTitle"    # I
    .param p5, "title"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/android/settings_ex/applications/ShortcutPreference;->mTarget:Ljava/lang/Class;

    .line 33
    iput-object p3, p0, Lcom/android/settings_ex/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    .line 34
    iput p5, p0, Lcom/android/settings_ex/applications/ShortcutPreference;->mTitle:I

    .line 35
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/applications/ShortcutPreference;->setTitle(I)V

    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ShortcutPreference;->setKey(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public performClick()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->performClick()V

    .line 42
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/android/settings_ex/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ShortcutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ShortcutPreference;->mTarget:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 45
    iget v5, p0, Lcom/android/settings_ex/applications/ShortcutPreference;->mTitle:I

    .line 44
    const/4 v4, 0x0

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 40
    return-void
.end method
