.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickShortcutButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 817
    const/4 v2, 0x0

    .line 819
    .local v2, pos:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 835
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 836
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 837
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 838
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const/high16 v3, 0x1020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 840
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$1400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 843
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 821
    :sswitch_0
    const/4 v2, 0x0

    .line 822
    goto :goto_0

    .line 824
    :sswitch_1
    const/4 v2, 0x1

    .line 825
    goto :goto_0

    .line 827
    :sswitch_2
    const/4 v2, 0x2

    .line 828
    goto :goto_0

    .line 830
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "RecentsPanelView"

    const-string v4, "Activity(ShortCut) Not Found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00fb -> :sswitch_0
        0x7f0d00fe -> :sswitch_1
        0x7f0d0101 -> :sswitch_2
        0x7f0d0104 -> :sswitch_3
    .end sparse-switch
.end method
