.class Lcom/android/settings_ex/datausage/DataUsageList$8;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/DataUsageList;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageList$8;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    move-object v1, p1

    .line 563
    check-cast v1, Lcom/android/settings_ex/datausage/AppDataUsagePreference;

    .line 564
    .local v1, "pref":Lcom/android/settings_ex/datausage/AppDataUsagePreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->getItem()Lcom/android/settings_exlib/AppItem;

    move-result-object v0

    .line 566
    .local v0, "item":Lcom/android/settings_exlib/AppItem;
    iget v2, v0, Lcom/android/settings_exlib/AppItem;->key:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/android/settings_exlib/AppItem;->key:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    .line 567
    :cond_0
    new-instance v2, Lcom/android/settings_exlib/net/UidDetail;

    invoke-direct {v2}, Lcom/android/settings_exlib/net/UidDetail;-><init>()V

    sput-object v2, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    .line 568
    sget-object v2, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings_exlib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 569
    sget-object v2, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings_exlib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList$8;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v2, v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-wrap3(Lcom/android/settings_ex/datausage/DataUsageList;Lcom/android/settings_exlib/AppItem;)V

    .line 573
    const/4 v2, 0x1

    return v2
.end method
