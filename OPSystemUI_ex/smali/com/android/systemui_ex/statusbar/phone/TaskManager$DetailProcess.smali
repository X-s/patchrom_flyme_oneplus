.class public Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailProcess"
.end annotation


# instance fields
.field private activityInfo:Landroid/content/pm/ActivityInfo;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private intent:Landroid/content/Intent;

.field private isHome:Z

.field private pkgName:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;

.field private taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    const/4 v0, 0x0

    .line 381
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 373
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    .line 374
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 375
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->title:Ljava/lang/String;

    .line 378
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    .line 382
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 383
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    .line 384
    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    .line 385
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 464
    instance-of v0, p1, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 467
    :goto_0
    return v0

    .restart local p1    # "another":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public filter()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 455
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    const-string v2, "com.android.dialer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    const-string v2, "com.quicinc.fmradio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->icon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "TaskManager"

    const-string v2, "name not found when get Icon"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    .line 421
    :goto_0
    return-object v0

    .line 417
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    .line 418
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 419
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pkgName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_0

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->title:Ljava/lang/String;

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->title:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "TaskManager"

    const-string v2, "name not found when get getTitle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public isHome()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->isHome:Z

    return v0
.end method

.method public setHome(Z)V
    .locals 0
    .param p1, "ishome"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->isHome:Z

    .line 389
    return-void
.end method
