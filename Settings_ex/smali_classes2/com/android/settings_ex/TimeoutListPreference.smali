.class public Lcom/android/settings_ex/TimeoutListPreference;
.super Lcom/android/settings_ex/RestrictedListPreference;
.source "TimeoutListPreference.java"


# instance fields
.field private mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field private final mInitialEntries:[Ljava/lang/CharSequence;

.field private final mInitialValues:[Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/TimeoutListPreference;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TimeoutListPreference;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    .line 38
    return-void
.end method


# virtual methods
.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/TimeoutListPreference;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    .line 60
    const v1, 0x7f110091

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "footerView":Landroid/view/View;
    const v1, 0x7f110092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    new-instance v2, Lcom/android/settings_ex/TimeoutListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/TimeoutListPreference$1;-><init>(Lcom/android/settings_ex/TimeoutListPreference;)V

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .end local v0    # "footerView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutListPreference;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f04001d

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 46
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public removeUnusableTimeouts(JLcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 11
    .param p1, "maxTimeout"    # J
    .param p3, "admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 74
    const-string/jumbo v8, "device_policy"

    .line 73
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 75
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    if-nez p3, :cond_1

    iget-object v7, p0, Lcom/android/settings_ex/TimeoutListPreference;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 82
    :cond_1
    if-nez p3, :cond_2

    .line 83
    const-wide p1, 0x7fffffffffffffffL

    .line 86
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 89
    iget-object v7, p0, Lcom/android/settings_ex/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    .local v4, "timeout":J
    cmp-long v7, v4, p1

    if-gtz v7, :cond_3

    .line 91
    iget-object v7, p0, Lcom/android/settings_ex/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v7, p0, Lcom/android/settings_ex/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    .end local v2    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "timeout":J
    :cond_4
    return-void

    .line 98
    .restart local v1    # "i":I
    .restart local v2    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v3    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 99
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 100
    return-void

    .line 102
    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings_ex/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v8, v8

    if-eq v7, v8, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 107
    .local v6, "userPreference":I
    new-array v7, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 108
    new-array v7, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 109
    iput-object p3, p0, Lcom/android/settings_ex/TimeoutListPreference;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 110
    int-to-long v8, v6

    cmp-long v7, v8, p1

    if-gtz v7, :cond_8

    .line 111
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 72
    .end local v6    # "userPreference":I
    :cond_7
    :goto_1
    return-void

    .line 112
    .restart local v6    # "userPreference":I
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, p1

    if-nez v7, :cond_7

    .line 116
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
