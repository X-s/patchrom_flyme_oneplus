.class public Lcom/oneplus/settings/launcher/LauncherUtils;
.super Ljava/lang/Object;
.source "LauncherUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switch2Launcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 24
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v6, "intent":Landroid/content/Intent;
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const/4 v14, 0x0

    invoke-virtual {v8, v6, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 28
    .local v11, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v11, :cond_4

    .line 29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 30
    .local v13, "size":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v13, :cond_0

    .line 31
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 32
    .local v9, "r":Landroid/content/pm/ResolveInfo;
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 33
    invoke-interface {v11, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    add-int/lit8 v13, v13, -0x1

    .line 39
    .end local v9    # "r":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-array v12, v13, [Landroid/content/ComponentName;

    .line 40
    .local v12, "set":[Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v2, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 43
    .local v3, "defaultMatch":I
    const-string v14, "LauncherUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v13, :cond_3

    .line 45
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 46
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v14, "LauncherUtils"

    invoke-virtual {v10}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v12, v5

    .line 50
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 52
    iget v3, v10, Landroid/content/pm/ResolveInfo;->match:I

    .line 44
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 30
    .end local v2    # "defaultLauncher":Landroid/content/ComponentName;
    .end local v3    # "defaultMatch":I
    .end local v5    # "i":I
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "set":[Landroid/content/ComponentName;
    .restart local v9    # "r":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    .end local v9    # "r":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "defaultLauncher":Landroid/content/ComponentName;
    .restart local v3    # "defaultMatch":I
    .restart local v5    # "i":I
    .restart local v12    # "set":[Landroid/content/ComponentName;
    :cond_3
    const-string v14, "LauncherUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "defaultMatch="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " defaultLauncher : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 59
    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 63
    const/high16 v14, 0x100000

    invoke-virtual {v8, v4, v14, v12, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 74
    .end local v2    # "defaultLauncher":Landroid/content/ComponentName;
    .end local v3    # "defaultMatch":I
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v12    # "set":[Landroid/content/ComponentName;
    .end local v13    # "size":I
    :cond_4
    return-void
.end method
