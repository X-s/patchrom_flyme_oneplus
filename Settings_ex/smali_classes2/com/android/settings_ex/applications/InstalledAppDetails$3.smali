.class Lcom/android/settings_ex/applications/InstalledAppDetails$3;
.super Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 8
    .param p1, "standardGrantedPermissionCount"    # I
    .param p2, "requestedPermissionCount"    # I
    .param p3, "additionalGrantedPermissionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "grantedGroupLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1255
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1256
    return-void

    .line 1258
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1259
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1261
    .local v3, "summary":Ljava/lang/CharSequence;
    if-nez p2, :cond_2

    .line 1263
    const v4, 0x7f0e0f26

    .line 1262
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, "summary":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->-get3(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1265
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->-get3(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1284
    :goto_0
    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 1285
    .local v0, "isCtaVersion":Z
    if-nez v0, :cond_1

    .line 1286
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->-get3(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1254
    :cond_1
    return-void

    .line 1267
    .end local v0    # "isCtaVersion":Z
    .local v3, "summary":Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1268
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez p3, :cond_3

    .line 1270
    new-array v4, v7, [Ljava/lang/Object;

    .line 1272
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1271
    const v5, 0x7f13001d

    .line 1270
    invoke-virtual {v2, v5, p3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1276
    const v4, 0x7f0e0f25

    .line 1275
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1280
    .local v3, "summary":Ljava/lang/CharSequence;
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->-get3(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1281
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->-get3(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1278
    .local v3, "summary":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/CharSequence;
    goto :goto_1
.end method
