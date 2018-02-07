.class public Lcom/android/setupwizardlib/util/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    }
.end annotation


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

.field private static final TAG:Ljava/lang/String; = "(SUW) Partner"

.field private static sPartner:Lcom/android/setupwizardlib/util/Partner;

.field private static sSearched:Z


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    .line 146
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/setupwizardlib/util/Partner;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v8, Lcom/android/setupwizardlib/util/Partner;

    monitor-enter v8

    .line 114
    :try_start_0
    sget-boolean v7, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    if-nez v7, :cond_2

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 116
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v4, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 118
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    .line 121
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 122
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 125
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v7, Lcom/android/setupwizardlib/util/Partner;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v7, v9, v6}, Lcom/android/setupwizardlib/util/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v7, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v7, 0x1

    :try_start_2
    sput-boolean v7, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    .line 134
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    sget-object v7, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-object v7

    .line 127
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "info$iterator":Ljava/util/Iterator;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string/jumbo v7, "(SUW) Partner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to find resources for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    .line 57
    .local v0, "entry":Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    .line 82
    invoke-static {p0}, Lcom/android/setupwizardlib/util/Partner;->get(Landroid/content/Context;)Lcom/android/setupwizardlib/util/Partner;

    move-result-object v2

    .line 83
    .local v2, "partner":Lcom/android/setupwizardlib/util/Partner;
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    .local v1, "ourResources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v2, v0, v4}, Lcom/android/setupwizardlib/util/Partner;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 88
    .local v3, "partnerId":I
    if-eqz v3, :cond_0

    .line 89
    new-instance v5, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    iget-object v6, v2, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v3, v7}, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;-><init>(Landroid/content/res/Resources;IZ)V

    return-object v5

    .line 92
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "ourResources":Landroid/content/res/Resources;
    .end local v3    # "partnerId":I
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, p1, v7}, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;-><init>(Landroid/content/res/Resources;IZ)V

    return-object v5
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    .line 68
    .local v0, "entry":Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized resetForTesting()V
    .locals 2

    .prologue
    const-class v1, Lcom/android/setupwizardlib/util/Partner;

    monitor-enter v1

    .line 139
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 138
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
