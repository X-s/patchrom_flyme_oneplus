.class final Lcom/android/settings_exlib/applications/ApplicationsState$2;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
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
        "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)I
    .locals 4
    .param p1, "object1"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "object2"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1256
    iget-wide v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v2, p2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1257
    :cond_0
    iget-wide v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v2, p2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 1258
    :cond_1
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 1255
    check-cast p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState$2;->compare(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method
