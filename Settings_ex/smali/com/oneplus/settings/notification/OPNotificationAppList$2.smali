.class final Lcom/oneplus/settings/notification/OPNotificationAppList$2;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final sINM:Landroid/app/INotificationManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->sCollator:Ljava/text/Collator;

    .line 516
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->sINM:Landroid/app/INotificationManager;

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;)I
    .locals 3
    .param p1, "lhs"    # Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    .param p2, "rhs"    # Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .prologue
    .line 521
    iget v0, p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->appPriority:I

    iget v1, p2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->appPriority:I

    if-eq v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->sCollator:Ljava/text/Collator;

    iget v1, p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->appPriority:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->appPriority:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 525
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->compare(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;)I

    move-result v0

    return v0
.end method
