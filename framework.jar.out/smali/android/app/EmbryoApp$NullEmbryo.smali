.class final Landroid/app/EmbryoApp$NullEmbryo;
.super Ljava/lang/Object;
.source "EmbryoApp.java"

# interfaces
.implements Landroid/app/IEmbryoApp;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/EmbryoApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullEmbryo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/EmbryoApp$NullEmbryo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/EmbryoApp$NullEmbryo;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    return-void
.end method

.method public checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkHWUI(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    return-void
.end method

.method public checkMainLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 189
    return-object p0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
