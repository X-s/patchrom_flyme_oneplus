.class Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.super Ljava/lang/Object;
.source "NavUtils.java"

# interfaces
.implements Landroid/support/v4/app/NavUtils$NavUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavUtilsImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-static {p1, v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 54
    :cond_0
    return-object v4

    .line 60
    :cond_1
    invoke-static {v1}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    const-string/jumbo v1, "NavUtils"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' in manifest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v4
.end method

.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "android.support.PARENT_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2

    .line 92
    :goto_0
    return-object v0

    .line 86
    :cond_0
    return-object v2

    .line 88
    :cond_1
    return-object v2

    .line 90
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/high16 v0, 0x4000000

    .line 79
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 82
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 74
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
