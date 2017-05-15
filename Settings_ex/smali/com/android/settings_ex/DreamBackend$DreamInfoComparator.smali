.class Lcom/android/settings_ex/DreamBackend$DreamInfoComparator;
.super Ljava/lang/Object;
.source "DreamBackend.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DreamBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DreamInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultDream:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "defaultDream"    # Landroid/content/ComponentName;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/android/settings_ex/DreamBackend$DreamInfoComparator;->mDefaultDream:Landroid/content/ComponentName;

    .line 296
    return-void
.end method

.method private sortKey(Lcom/android/settings_ex/DreamBackend$DreamInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "di"    # Lcom/android/settings_ex/DreamBackend$DreamInfo;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/android/settings_ex/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings_ex/DreamBackend$DreamInfoComparator;->mDefaultDream:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p1, Lcom/android/settings_ex/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 305
    :cond_0
    const/16 v1, 0x31

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/DreamBackend$DreamInfo;Lcom/android/settings_ex/DreamBackend$DreamInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settings_ex/DreamBackend$DreamInfo;
    .param p2, "rhs"    # Lcom/android/settings_ex/DreamBackend$DreamInfo;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DreamBackend$DreamInfoComparator;->sortKey(Lcom/android/settings_ex/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings_ex/DreamBackend$DreamInfoComparator;->sortKey(Lcom/android/settings_ex/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 291
    check-cast p1, Lcom/android/settings_ex/DreamBackend$DreamInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_ex/DreamBackend$DreamInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/DreamBackend$DreamInfoComparator;->compare(Lcom/android/settings_ex/DreamBackend$DreamInfo;Lcom/android/settings_ex/DreamBackend$DreamInfo;)I

    move-result v0

    return v0
.end method
