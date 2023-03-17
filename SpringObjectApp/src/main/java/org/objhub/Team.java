package org.objhub;

public class Team {
	
	Player player;
	
	public Player getPlayer() {
		return player;
	}
	public void setPlayer(Player player) {
		this.player= player;
	}
	
	public void show() {
		System.out.println(player.getId()+"\t"+player.getName()+"\t"+player.getSal());
	}
}
